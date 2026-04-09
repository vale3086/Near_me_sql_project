-- =====================================================
-- NEAR ME - CREACION DE OBJETOS
-- AUTOR: VALERIA CASTILLO
-- FECHA: 2026
-- DESCRIPCION: CREACION DE BASE DE DATOS, TABLAS,
--              INDICES, VISTAS, FUNCIONES,
--              STORED PROCEDURES Y TRIGGERS
-- EJECUTAR ANTES DE: Near_Me_Datos.sql
-- =====================================================

-- CREACION DE LA BASE DE DATOS
CREATE DATABASE IF NOT EXISTS near_me;
USE near_me;

-- =====================================================
-- TABLAS
-- =====================================================

-- 1. TABLA PAIS
CREATE TABLE country (
    id_country INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(100) NOT NULL
);

-- 2. TABLA PROVINCIA/ESTADO
CREATE TABLE state (
    id_state INT PRIMARY KEY AUTO_INCREMENT,
    state VARCHAR(100) NOT NULL,
    id_country INT,
    CONSTRAINT fk_state_country
        FOREIGN KEY (id_country) REFERENCES country(id_country)
);

-- 3. TABLA CIUDAD
CREATE TABLE city (
    id_city INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(100) NOT NULL,
    zip_code INT NOT NULL,
    id_state INT,
    CONSTRAINT fk_city_state
        FOREIGN KEY (id_state) REFERENCES state(id_state)
);

-- 4. TABLA CATEGORIA DE COMERCIO
CREATE TABLE category (
    id_category INT PRIMARY KEY AUTO_INCREMENT,
    category VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE -- CAMPO PARA BAJA LOGICA DE CATEGORIAS
);

-- 5. TABLA ETIQUETAS
CREATE TABLE tag (
    id_tag INT PRIMARY KEY AUTO_INCREMENT,
    tag VARCHAR(100) NOT NULL UNIQUE -- EJ: 'Acepta tarjeta', 'Pet friendly', ETC.
);

-- 6. TABLA COMERCIO
CREATE TABLE business (
    id_business INT PRIMARY KEY AUTO_INCREMENT,
    business VARCHAR(150) NOT NULL,
    id_category INT,
    id_city INT,
    address VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE, -- CAMPO PARA BAJA LOGICA DE COMERCIOS
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_business_category
        FOREIGN KEY (id_category) REFERENCES category(id_category),
    CONSTRAINT fk_business_city
        FOREIGN KEY (id_city) REFERENCES city(id_city)
);

-- 7. TABLA HORARIOS DE COMERCIO
-- REGISTRA LOS HORARIOS DE ATENCION POR DIA DE LA SEMANA
CREATE TABLE business_hours (
    id_hours INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT NOT NULL,
    day_of_week ENUM('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL,
    open_time TIME,
    close_time TIME,
    is_closed BOOLEAN DEFAULT FALSE, -- INDICA SI ESE DIA EL COMERCIO NO ABRE
    CONSTRAINT fk_hours_business
        FOREIGN KEY (id_business) REFERENCES business(id_business)
);

-- 8. TABLA TELEFONOS DE COMERCIO
-- PERMITE REGISTRAR MAS DE UN NUMERO DE CONTACTO POR COMERCIO
CREATE TABLE business_phone (
    id_phone INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT NOT NULL,
    phone VARCHAR(30) NOT NULL,
    label VARCHAR(50), -- ETIQUETA: 'WhatsApp', 'Fijo', 'Turnos', ETC.
    CONSTRAINT fk_phone_business
        FOREIGN KEY (id_business) REFERENCES business(id_business)
);

-- 9. TABLA RELACION COMERCIO-ETIQUETA (N:M)
CREATE TABLE business_tag (
    id_business INT NOT NULL,
    id_tag INT NOT NULL,
    PRIMARY KEY (id_business, id_tag),
    CONSTRAINT fk_btag_business
        FOREIGN KEY (id_business) REFERENCES business(id_business),
    CONSTRAINT fk_btag_tag
        FOREIGN KEY (id_tag) REFERENCES tag(id_tag)
);

-- 10. TABLA USUARIO
CREATE TABLE user (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    id_city INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP NULL, -- CAMPO PARA BORRADO LOGICO (NULL SI ESTA ACTIVO)
    CONSTRAINT fk_user_city
        FOREIGN KEY (id_city) REFERENCES city(id_city)
);

-- 11. TABLA RESEÑA
CREATE TABLE review (
    id_review INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT,
    id_user INT,
    score INT CHECK (score BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_review_business
        FOREIGN KEY (id_business) REFERENCES business(id_business),
    CONSTRAINT fk_review_user
        FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- 12. TABLA FAVORITOS (TRANSACCIONAL)
-- REGISTRA LOS COMERCIOS GUARDADOS COMO FAVORITOS POR CADA USUARIO
CREATE TABLE user_favorite (
    id_favorite INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT NOT NULL,
    id_business INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_favorite_user
        FOREIGN KEY (id_user) REFERENCES user(id_user),
    CONSTRAINT fk_favorite_business
        FOREIGN KEY (id_business) REFERENCES business(id_business),
    CONSTRAINT uq_favorite UNIQUE (id_user, id_business) -- UN USUARIO NO PUEDE GUARDAR EL MISMO COMERCIO DOS VECES
);

-- 13. TABLA RECLAMO DE COMERCIO (TRANSACCIONAL)
-- REGISTRA EL PROCESO POR EL CUAL UN DUENO RECLAMA LA GESTION DE SU COMERCIO
CREATE TABLE business_claim (
    id_claim INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT NOT NULL,
    id_user INT NOT NULL,
    status ENUM('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP NULL,
    notes TEXT,
    CONSTRAINT fk_claim_business
        FOREIGN KEY (id_business) REFERENCES business(id_business),
    CONSTRAINT fk_claim_user
        FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- 14. TABLA REPORTES DE RESEÑAS
-- PERMITE A LOS USUARIOS REPORTAR RESEÑAS INAPROPIADAS O FALSAS
CREATE TABLE report (
    id_report INT PRIMARY KEY AUTO_INCREMENT,
    id_review INT NOT NULL,
    id_user INT NOT NULL,
    reason VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('pendiente','resuelto','descartado') DEFAULT 'pendiente',
    CONSTRAINT fk_report_review
        FOREIGN KEY (id_review) REFERENCES review(id_review),
    CONSTRAINT fk_report_user
        FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- 15. TABLA DE HECHOS: LOG DE AUDITORIA
-- REGISTRA TODOS LOS CAMBIOS CRITICOS REALIZADOS SOBRE COMERCIOS
-- ALIMENTADA AUTOMATICAMENTE POR TRIGGERS
CREATE TABLE audit_log (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    table_name VARCHAR(100) NOT NULL,
    operation VARCHAR(20) NOT NULL,
    record_id INT NOT NULL,
    changed_field VARCHAR(100),
    old_value TEXT,
    new_value TEXT,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 16. TABLA DE HECHOS: RESUMEN DE RESEÑAS POR COMERCIO
-- CONCENTRA METRICAS PRECALCULADAS PARA REPORTES Y ANALISIS
-- ACTUALIZADA AUTOMATICAMENTE POR TRIGGER
CREATE TABLE fact_reviews_summary (
    id_summary INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT NOT NULL UNIQUE,
    total_reviews INT DEFAULT 0,
    avg_score DECIMAL(3,2) DEFAULT 0.00,
    score_5 INT DEFAULT 0,
    score_4 INT DEFAULT 0,
    score_3 INT DEFAULT 0,
    score_2 INT DEFAULT 0,
    score_1 INT DEFAULT 0,
    last_review_at TIMESTAMP NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_summary_business
        FOREIGN KEY (id_business) REFERENCES business(id_business)
);

-- =====================================================
-- INDICES DE OPTIMIZACION
-- =====================================================

CREATE INDEX idx_business_review ON review(id_business);
CREATE INDEX idx_user_email      ON user(email);
CREATE INDEX idx_user_city       ON user(id_city);
CREATE INDEX idx_hours_business  ON business_hours(id_business);
CREATE INDEX idx_favorite_user   ON user_favorite(id_user);
CREATE INDEX idx_claim_status    ON business_claim(status);
CREATE INDEX idx_report_status   ON report(status);
CREATE INDEX idx_audit_table     ON audit_log(table_name, record_id);

-- =====================================================
-- VISTAS
-- =====================================================

-- REPORTE GEOGRAFICO COMPLETO DE COMERCIOS
CREATE OR REPLACE VIEW vw_business_full_data AS
SELECT 
    b.id_business, 
    b.business AS name, 
    c.category, 
    ci.city, 
    s.state, 
    co.country, 
    b.address
FROM business b
JOIN category c ON b.id_category = c.id_category
JOIN city ci    ON b.id_city = ci.id_city
JOIN state s    ON ci.id_state = s.id_state
JOIN country co ON s.id_country = co.id_country;

-- DETALLE DE COMERCIOS ACTIVOS (FUENTE PRINCIPAL PARA LA APP)
CREATE OR REPLACE VIEW vw_active_business_details AS
SELECT 
    b.id_business, 
    b.business AS name, 
    cat.category, 
    ci.city, 
    st.state, 
    co.country, 
    b.address
FROM business b
JOIN category cat ON b.id_category = cat.id_category
JOIN city ci      ON b.id_city = ci.id_city
JOIN state st     ON ci.id_state = st.id_state
JOIN country co   ON st.id_country = co.id_country
WHERE b.is_active = TRUE;

-- ACTIVIDAD DE USUARIOS (CONTEO TOTAL DE RESEÑAS)
CREATE OR REPLACE VIEW vw_user_activity AS
SELECT 
    u.id_user, 
    u.first_name, 
    u.last_name, 
    COUNT(r.id_review) AS total_reviews
FROM user u
LEFT JOIN review r ON u.id_user = r.id_user
GROUP BY u.id_user, u.first_name, u.last_name;

-- COMERCIOS DESTACADOS (PROMEDIO MAYOR A 4 ESTRELLAS)
CREATE OR REPLACE VIEW vw_top_rated_business AS
SELECT 
    id_business, 
    AVG(score) AS average
FROM review
GROUP BY id_business
HAVING average > 4;

-- RANKING DE USUARIOS ACTIVOS POR RESEÑAS
CREATE OR REPLACE VIEW vw_top_reviewers AS
SELECT 
    u.id_user, 
    u.first_name, 
    u.last_name, 
    COUNT(r.id_review) AS total_reviews, 
    MAX(r.created_at) AS last_review_date
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

-- COMERCIOS ACTIVOS CON HORARIOS DE ATENCION
CREATE OR REPLACE VIEW vw_business_with_hours AS
SELECT 
    b.id_business,
    b.business      AS nombre,
    cat.category    AS rubro,
    ci.city         AS ciudad,
    bh.day_of_week  AS dia,
    bh.open_time    AS apertura,
    bh.close_time   AS cierre,
    bh.is_closed    AS cerrado_ese_dia
FROM business b
JOIN category cat ON b.id_category = cat.id_category
JOIN city ci      ON b.id_city = ci.id_city
LEFT JOIN business_hours bh ON b.id_business = bh.id_business
WHERE b.is_active = TRUE;

-- PERFORMANCE CONSOLIDADA DE COMERCIOS (PARA DASHBOARDS)
CREATE OR REPLACE VIEW vw_business_performance AS
SELECT 
    b.id_business,
    b.business          AS nombre,
    cat.category        AS rubro,
    ci.city             AS ciudad,
    IFNULL(f.total_reviews, 0) AS total_reseñas,
    IFNULL(f.avg_score, 0)     AS promedio,
    f.last_review_at           AS ultima_reseña
FROM business b
JOIN category cat ON b.id_category = cat.id_category
JOIN city ci      ON b.id_city = ci.id_city
LEFT JOIN fact_reviews_summary f ON b.id_business = f.id_business
WHERE b.is_active = TRUE
ORDER BY f.avg_score DESC;

-- =====================================================
-- FUNCIONES
-- =====================================================

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

-- GENERAR FORMATO DE UBICACION: "CIUDAD, PROVINCIA"
CREATE FUNCTION fn_format_location(p_city_id INT) RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_loc VARCHAR(255);
    SELECT CONCAT(ci.city, ', ', s.state) INTO v_loc
    FROM city ci JOIN state s ON ci.id_state = s.id_state
    WHERE ci.id_city = p_city_id;
    RETURN v_loc;
END //

-- CANTIDAD DE VECES QUE UN COMERCIO FUE GUARDADO COMO FAVORITO
CREATE FUNCTION fn_count_favorites(p_business_id INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_count INT;
    SELECT COUNT(*) INTO v_count
    FROM user_favorite
    WHERE id_business = p_business_id;
    RETURN v_count;
END //

-- DIA DE LA SEMANA CON MAS RESEÑAS PARA UN COMERCIO
CREATE FUNCTION fn_busiest_day(p_business_id INT) RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE v_day VARCHAR(20);
    SELECT DAYNAME(created_at) INTO v_day
    FROM review
    WHERE id_business = p_business_id
    GROUP BY DAYNAME(created_at)
    ORDER BY COUNT(*) DESC
    LIMIT 1;
    RETURN IFNULL(v_day, 'Sin datos');
END //

DELIMITER ;

-- =====================================================
-- STORED PROCEDURES
-- =====================================================

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

-- REPORTE INTEGRAL DE UN COMERCIO
CREATE PROCEDURE sp_get_business_report(IN p_id INT)
BEGIN
    SELECT
        business                            AS nombre,
        fn_get_average_score(id_business)   AS rating_promedio,
        fn_format_location(id_city)         AS ubicacion_completa
    FROM business WHERE id_business = p_id;

    SELECT * FROM review WHERE id_business = p_id ORDER BY created_at DESC;
END //

-- INSERTAR RESEÑA VALIDANDO QUE EL USUARIO ESTE ACTIVO
CREATE PROCEDURE sp_add_review_safe(
    IN p_user_id INT,
    IN p_business_id INT,
    IN p_score INT,
    IN p_comment TEXT
)
BEGIN
    IF fn_is_user_active(p_user_id) THEN
        INSERT INTO review (id_business, id_user, score, comment)
        VALUES (p_business_id, p_user_id, p_score, p_comment);
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: EL USUARIO ESTA INACTIVO Y NO PUEDE COMENTAR';
    END IF;
END //

-- BAJA LOGICA DE UN USUARIO
CREATE PROCEDURE sp_soft_delete_user(IN p_user_id INT)
BEGIN
    IF fn_is_user_active(p_user_id) THEN
        UPDATE user SET deleted_at = CURRENT_TIMESTAMP WHERE id_user = p_user_id;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: EL USUARIO YA SE ENCUENTRA DADO DE BAJA';
    END IF;
END //

-- RECALCULAR METRICAS DE fact_reviews_summary PARA UN COMERCIO
CREATE PROCEDURE sp_refresh_summary(IN p_business_id INT)
BEGIN
    INSERT INTO fact_reviews_summary
        (id_business, total_reviews, avg_score, score_5, score_4, score_3, score_2, score_1, last_review_at)
    SELECT
        id_business,
        COUNT(*),
        ROUND(AVG(score), 2),
        SUM(score = 5),
        SUM(score = 4),
        SUM(score = 3),
        SUM(score = 2),
        SUM(score = 1),
        MAX(created_at)
    FROM review
    WHERE id_business = p_business_id
    GROUP BY id_business
    ON DUPLICATE KEY UPDATE
        total_reviews  = VALUES(total_reviews),
        avg_score      = VALUES(avg_score),
        score_5        = VALUES(score_5),
        score_4        = VALUES(score_4),
        score_3        = VALUES(score_3),
        score_2        = VALUES(score_2),
        score_1        = VALUES(score_1),
        last_review_at = VALUES(last_review_at);
END //

DELIMITER ;

-- =====================================================
-- TRIGGERS
-- =====================================================

DELIMITER //

-- ACTUALIZAR AUTOMATICAMENTE EL TIMESTAMP DE MODIFICACION EN COMERCIOS
CREATE TRIGGER tr_audit_business_update
BEFORE UPDATE ON business
FOR EACH ROW
SET NEW.updated_at = CURRENT_TIMESTAMP //

-- VALIDAR QUE EL PUNTAJE DE LA RESEÑA ESTE EN EL RANGO PERMITIDO (1-5)
CREATE TRIGGER tr_prevent_invalid_score
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
    IF NEW.score < 1 OR NEW.score > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'ERROR: EL SCORE DEBE ESTAR ENTRE 1 Y 5';
    END IF;
END //

-- REGISTRAR EN audit_log CADA VEZ QUE SE DESACTIVA UN COMERCIO
CREATE TRIGGER tr_log_business_changes
AFTER UPDATE ON business
FOR EACH ROW
BEGIN
    IF OLD.is_active = TRUE AND NEW.is_active = FALSE THEN
        INSERT INTO audit_log (table_name, operation, record_id, changed_field, old_value, new_value)
        VALUES ('business', 'SOFT DELETE', NEW.id_business, 'is_active', 'TRUE', 'FALSE');
    END IF;
END //

-- ACTUALIZAR fact_reviews_summary DESPUES DE CADA NUEVA RESEÑA
CREATE TRIGGER tr_update_summary_on_review
AFTER INSERT ON review
FOR EACH ROW
BEGIN
    CALL sp_refresh_summary(NEW.id_business);
END //

DELIMITER ;
