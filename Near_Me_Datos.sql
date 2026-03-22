USE near_me;

-- -----------------------------------------------------
-- 1. INSERCION DE DATOS GEOGRAFICOS
-- -----------------------------------------------------
INSERT INTO country (country) VALUES ('Argentina');

INSERT INTO state (state, id_country) VALUES ('Santa Fe', 1);

INSERT INTO city (city, zip_code, id_state) VALUES 
('Funes', 2132, 1), 
('Roldán', 2134, 1), 
('Ibarlucea', 2142, 1);

-- -----------------------------------------------------
-- 2. INSERCION DE CATEGORIAS
-- -----------------------------------------------------
INSERT INTO category (category) VALUES 
('Gastronomía'), ('Salud'), ('Servicios Hogar'), ('Educación'), ('Supermercados');

-- -----------------------------------------------------
-- 3. INSERCION DE USUARIOS 
-- -----------------------------------------------------
INSERT INTO user (first_name, last_name, email, password, phone, address, id_city) VALUES
('Valeria', 'Castillo', 'valeria@nearme.com.ar', 'pass123', '34150001', 'Av. Illia 100', 1),
('Alejo', 'Gomez', 'alejo@gmail.com', 'pass123', '34150002', 'Fuerza Aérea 500', 1),
('Martin', 'Perez', 'martin@gmail.com', 'pass123', '34150003', 'San José 200', 2),
('Lucía', 'Rodriguez', 'lucia@gmail.com', 'pass123', '34150004', 'Ruta 34 km 5', 3),
('Tomas', 'Blanco', 'tomas@gmail.com', 'pass123', '34150005', 'Mitre 50', 1),
('Elena', 'Torres', 'elena@gmail.com', 'pass123', '34150006', 'Pellegrini 800', 2),
('Marcos', 'Ruiz', 'marcos@gmail.com', 'pass123', '34150007', 'Los Horneros 12', 3),
('Sofia', 'Lopez', 'sofia@gmail.com', 'pass123', '34150008', 'Hipólito Yrigoyen 400', 1),
('Bruno', 'Diaz', 'bruno@gmail.com', 'pass123', '34150009', 'Echagüe 150', 2),
('Clara', 'Sosa', 'clara@gmail.com', 'pass123', '34150010', 'Belgrano 300', 3),
('Juan', 'Castillo', 'juan@test.com', '123', '001', 'Dir 1', 1),
('Marta', 'Galli', 'marta@test.com', '123', '002', 'Dir 2', 1),
('Pedro', 'Vazquez', 'pedro@test.com', '123', '003', 'Dir 3', 2),
('Ana', 'Rios', 'ana@test.com', '123', '004', 'Dir 4', 2),
('Hugo', 'Luna', 'hugo@test.com', '123', '005', 'Dir 5', 3),
('Ines', 'Moro', 'ines@test.com', '123', '006', 'Dir 6', 3),
('Raul', 'Peña', 'raul@test.com', '123', '007', 'Dir 7', 1),
('Silvia', 'Duarte', 'silvia@test.com', '123', '008', 'Dir 8', 2),
('Jorge', 'Manso', 'jorge@test.com', '123', '009', 'Dir 9', 3),
('Paula', 'Briz', 'paula@test.com', '123', '010', 'Dir 10', 1),
('Luis', 'Vega', 'luis@test.com', '123', '011', 'Dir 11', 1),
('Rosa', 'Campo', 'rosa@test.com', '123', '012', 'Dir 12', 2),
('Enzo', 'Ferrari', 'enzo@test.com', '123', '013', 'Dir 13', 3),
('Gisela', 'Ponte', 'gisela@test.com', '123', '014', 'Dir 14', 1),
('Oscar', 'Luz', 'oscar@test.com', '123', '015', 'Dir 15', 2),
('Teresa', 'Nave', 'teresa@test.com', '123', '016', 'Dir 16', 3),
('Dante', 'Alba', 'dante@test.com', '123', '017', 'Dir 17', 1),
('Nora', 'Vidal', 'nora@test.com', '123', '018', 'Dir 18', 2),
('Fabio', 'Guerra', 'fabio@test.com', '123', '019', 'Dir 19', 3),
('Rocio', 'Paz', 'rocio@test.com', '123', '020', 'Dir 20', 1);

-- -----------------------------------------------------
-- 4. INSERCION DE COMERCIOS 
-- -----------------------------------------------------
INSERT INTO business (business, id_category, id_city, address) VALUES
('Gym Funes', 2, 1, 'Fuerza Aerea 1900'),
('Kiosco 24hs', 5, 2, 'Bv San Martin 500'),
('Taller Mecánico', 3, 3, 'Av Central 44'),
('Instituto de Inglés', 4, 1, 'Catamarca 120'),
('Carnicería El Cholo', 5, 2, 'Echague 900'),
('Clinica Dental', 2, 3, 'Ibarlucea Centro 5'),
('Resto Bar 1910', 1, 1, 'Ruta 9 2000'),
('Gasista Matriculado', 3, 2, 'Tierra de Sueños 2'),
('Librería Escolar', 4, 3, 'Ruta 34 500'),
('Super Chino', 5, 1, 'Mitre 200'),
('Veterinaria Funes', 2, 1, 'Angelomé 1300'),
('Pinturería Color', 3, 2, 'Ruta 9 km 320'),
('Escuela de Danzas', 4, 3, 'Calle Pública 1'),
('Market Saludable', 5, 1, 'Suipacha 45'),
('Restaurante La Posta', 1, 2, 'AO12 y Ruta 9'),
('Pediatra Online', 2, 3, 'Telemedicina Local'),
('Electricista 24/7', 3, 1, 'Servicio a Domicilio'),
('Capacitación IT', 4, 2, 'Coworking Roldán'),
('Express Market', 5, 3, 'Calle del Sol 4'),
('Bodegón Familiar', 1, 1, 'Sarmiento 400');

-- -----------------------------------------------------
-- 5. INSERCION DE RESEÑAS (PARA GENERAR RANKINGS Y PROMEDIOS)
-- -----------------------------------------------------
-- NOTA: USAMOS EL SP PARA RESEÑA SEGURA (USUARIOS ACTIVOS)
CALL sp_add_review_safe(1, 1, 5, 'La mejor pizza de la zona!');
CALL sp_add_review_safe(1, 7, 4, 'Muy rico el sushi, demora un poco.');
CALL sp_add_review_safe(2, 1, 4, 'Buena relación precio calidad.');
CALL sp_add_review_safe(3, 2, 5, 'Riquísimos los gustos frutales.');
CALL sp_add_review_safe(4, 3, 5, 'Atención excelente en la farmacia.');
CALL sp_add_review_safe(1, 4, 5, 'Mis hijos van felices.');
CALL sp_add_review_safe(2, 4, 4, 'Buen nivel académico.');
CALL sp_add_review_safe(1, 5, 2, 'Mucho tiempo de espera en caja.');
CALL sp_add_review_safe(5, 5, 5, 'Buenos precios.');
CALL sp_add_review_safe(6, 6, 3, 'No tenían stock de lo que buscaba.');
CALL sp_add_review_safe(1, 8, 5, 'Profesionales excelentes.');
CALL sp_add_review_safe(1, 10, 4, 'Lugar agradable.');
CALL sp_add_review_safe(11, 1, 5, 'Recomendado.');
CALL sp_add_review_safe(11, 2, 5, 'Genial.');
CALL sp_add_review_safe(12, 1, 4, 'Ok.');
CALL sp_add_review_safe(12, 5, 4, 'Bueno.');
CALL sp_add_review_safe(13, 7, 5, 'Excelente!');
CALL sp_add_review_safe(13, 8, 5, 'Muy bueno.');
CALL sp_add_review_safe(14, 1, 2, 'No me gustó.');
CALL sp_add_review_safe(14, 2, 1, 'Pésimo.');
CALL sp_add_review_safe(14, 3, 3, 'Zafa.');
CALL sp_add_review_safe(15, 4, 5, 'Increíble.');
CALL sp_add_review_safe(15, 10, 5, 'Perfecto.');
CALL sp_add_review_safe(16, 1, 4, 'Volveré.');
CALL sp_add_review_safe(16, 5, 5, 'Súper.');
CALL sp_add_review_safe(17, 7, 5, 'Me encantó.');
CALL sp_add_review_safe(18, 8, 5, 'Atención 10 puntos.');
CALL sp_add_review_safe(19, 9, 4, 'Rápido.');
CALL sp_add_review_safe(20, 10, 5, 'Volvería mil veces.');
CALL sp_add_review_safe(21, 1, 5, 'Sin palabras, muy bueno.');