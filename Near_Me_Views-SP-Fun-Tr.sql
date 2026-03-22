USE near_me;

-- -----------------------------------------------------
-- VISTAS 
-- -----------------------------------------------------

-- REPORTE GEOGRAFICO DE COMERCIOS
CREATE OR REPLACE VIEW vw_business_full_data AS
SELECT b.id_business, b.business AS name, c.category, ci.city, s.state, co.country, b.address
FROM business b
JOIN category c ON b.id_category = c.id_category
JOIN city ci    ON b.id_city = ci.id_city
JOIN state s    ON ci.id_state = s.id_state
JOIN country co ON s.id_country = co.id_country;

-- DETALLE DE COMERCIOS ACTIVOS 
CREATE OR REPLACE VIEW vw_active_business_details AS
SELECT b.id_business, b.business AS name, cat.category, ci.city, st.state, co.country, b.address
FROM business b
JOIN category cat ON b.id_category = cat.id_category
JOIN city ci      ON b.id_city = ci.id_city
JOIN state st     ON ci.id_state = st.id_state
JOIN country co   ON st.id_country = co.id_country
WHERE b.is_active = TRUE;

-- ACTIVIDAD DE USUARIOS (CONTEO TOTAL DE RESEÑAS)
CREATE OR REPLACE VIEW vw_user_activity AS
SELECT u.id_user, u.first_name, u.last_name, COUNT(r.id_review) AS total_reviews
FROM user u
LEFT JOIN review r ON u.id_user = r.id_user
GROUP BY u.id_user, u.first_name, u.last_name;

-- COMERCIOS DESTACADOS (PROMEDIO MAYOR A 4 ESTRELLAS)
CREATE OR REPLACE VIEW vw_top_rated_business AS
SELECT id_business, AVG(score) AS average
FROM review
GROUP BY id_business
HAVING average > 4; 

-- USUARIOS CON MAS RESEÑAS (RANKING DE ACTIVOS)
CREATE OR REPLACE VIEW vw_top_reviewers AS
SELECT u.id_user, u.first_name, u.last_name, COUNT(r.id_review) AS total_reviews, MAX(r.created_at) AS last_review_date
FROM user u
JOIN review r ON u.id_user = r.id_user
WHERE u.deleted_at IS NULL 
GROUP BY u.id_user, u.first_name, u.last_name
ORDER BY total_reviews DESC;

-- TOP 10 USUARIOS CON MAS RESEÑAS 
CREATE OR REPLACE VIEW vw_top_10_reviewers AS
SELECT 
    u.id_user, 
    u.first_name, 
    u.last_name, 
    COUNT(r.id_review) AS total_reviews
FROM user u
JOIN review r ON u.id_user = r.id_user
WHERE u.deleted_at IS NULL 
GROUP BY u.id_user, u.first_name, u.last_name
ORDER BY total_reviews DESC
LIMIT 10;
-- -----------------------------------------------------
-- FUNCIONES 
-- -----------------------------------------------------
DELIMITER //

-- PROMEDIO DE CALIFICACION DE UN COMERCIO
CREATE FUNCTION fn_get_average_score(p_id INT) RETURNS DECIMAL(3,2)
DETERMINISTIC
BEGIN
    DECLARE v_avg DECIMAL(3,2);
    SELECT AVG(score) INTO v_avg FROM review WHERE id_business = p_id;
    RETURN IFNULL(v_avg, 0);
END //

-- VALIDAR SI UN USUARIO SE ENCUENTRA ACTIVO
CREATE FUNCTION fn_is_user_active(p_id INT) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE v_active BOOLEAN;
    SELECT (deleted_at IS NULL) INTO v_active FROM user WHERE id_user = p_id;
    RETURN v_active;
END //

-- GENERAR FORMATO DE UBICACION (CIUDAD, PROVINCIA)
CREATE FUNCTION fn_format_location(p_city_id INT) RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_loc VARCHAR(255);
    SELECT CONCAT(ci.city, ', ', s.state) INTO v_loc
    FROM city ci JOIN state s ON ci.id_state = s.id_state
    WHERE ci.id_city = p_city_id;
    RETURN v_loc;
END //

DELIMITER ;

-- -----------------------------------------------------
-- STORED PROCEDURES (SP)
-- -----------------------------------------------------
DELIMITER //

-- REGISTRAR COMERCIO EVITANDO DUPLICADOS POR DIRECCION
CREATE PROCEDURE sp_register_business_safe(
    IN p_name VARCHAR(150), 
    IN p_cat INT, 
    IN p_city INT, 
    IN p_addr VARCHAR(255)
)
BEGIN
    DECLARE v_exists INT;
    
    -- CONTAMOS SI YA EXISTE UN COMERCIO EN ESA DIRECCION Y CIUDAD
    SELECT COUNT(*) INTO v_exists 
    FROM business 
    WHERE address = p_addr AND id_city = p_city;
    
    IF v_exists = 0 THEN
        INSERT INTO business (business, id_category, id_city, address)
        VALUES (p_name, p_cat, p_city, p_addr);
    ELSE
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'ERROR: YA EXISTE UN COMERCIO REGISTRADO EN ESA UBICACION';
    END IF;
END //

-- BAJA LOGICA DE UN COMERCIO
CREATE PROCEDURE sp_soft_delete_business(IN p_id INT)
BEGIN
    UPDATE business SET is_active = FALSE WHERE id_business = p_id;
END //

-- REPORTE INTEGRAL DE COMERCIO 
CREATE PROCEDURE sp_get_business_report(IN p_id INT)
BEGIN
    SELECT 
        business AS nombre, 
        fn_get_average_score(id_business) AS rating_promedio, 
        fn_format_location(id_city) AS ubicacion_completa
    FROM business WHERE id_business = p_id;
    
    SELECT * FROM review WHERE id_business = p_id ORDER BY created_at DESC;
END //

-- INSERTAR RESEÑA SEGURA 
CREATE PROCEDURE sp_add_review_safe(IN p_user_id INT, IN p_business_id INT, IN p_score INT, IN p_comment TEXT)
BEGIN
    IF fn_is_user_active(p_user_id) THEN
        INSERT INTO review (id_business, id_user, score, comment)
        VALUES (p_business_id, p_user_id, p_score, p_comment);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR: EL USUARIO ESTA INACTIVO Y NO PUEDE COMENTAR';
    END IF;
END //

DELIMITER ;

-- -----------------------------------------------------
-- TRIGGERS
-- -----------------------------------------------------
DELIMITER //
-- ACTUALIZAR AUTOMATICAMENTE EL TIMESTAMP DE MODIFICACION EN COMERCIOS
CREATE TRIGGER tr_audit_business_update
BEFORE UPDATE ON business
FOR EACH ROW
SET NEW.updated_at = CURRENT_TIMESTAMP;

-- VALIDAR QUE EL PUNTAJE DE LA RESEÑA ESTE EN EL RANGO PERMITIDO (1-5)
CREATE TRIGGER tr_prevent_invalid_score
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    IF NEW.score < 1 OR NEW.score > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ERROR: EL SCORE DEBE ESTAR ENTRE 1 Y 5';
    END IF;
END //

DELIMITER ;