-- =====================================================
-- NEAR ME - INSERCION DE DATOS
-- AUTOR: VALERIA CASTILLO
-- FECHA: 2026
-- DESCRIPCION: INSERCION DE TODOS LOS REGISTROS
--              DE LA BASE DE DATOS NEAR ME
-- EJECUTAR DESPUES DE: Near_Me_Completo.sql
-- =====================================================

USE near_me;

-- =====================================================
-- 1. DATOS GEOGRAFICOS
-- =====================================================

INSERT INTO country (country) VALUES 
('Argentina');

INSERT INTO state (state, id_country) VALUES 
('Santa Fe', 1);

INSERT INTO city (city, zip_code, id_state) VALUES 
('Funes',               2132, 1),
('Roldán',              2134, 1),
('Ibarlucea',           2142, 1),
('Rosario',             2000, 1),
('Granadero Baigorria', 2152, 1),
('Pérez',               2121, 1);

-- =====================================================
-- 2. CATEGORIAS DE COMERCIO
-- =====================================================

INSERT INTO category (category) VALUES 
('Gastronomía'),
('Salud'),
('Servicios Hogar'),
('Educación'),
('Supermercados'),
('Indumentaria'),
('Tecnología'),
('Belleza y Estética'),
('Deportes'),
('Mascotas');

-- =====================================================
-- 3. ETIQUETAS
-- =====================================================

INSERT INTO tag (tag) VALUES 
('Acepta tarjeta'),
('Solo efectivo'),
('Delivery disponible'),
('Pet friendly'),
('Estacionamiento'),
('Atiende fines de semana'),
('Turno previo'),
('Servicio a domicilio'),
('Apto celíacos'),
('WiFi gratis');

-- =====================================================
-- 4. USUARIOS
-- =====================================================

-- USUARIOS ORIGINALES (FUNES, ROLDAN, IBARLUCEA)
INSERT INTO user (first_name, last_name, email, password, phone, address, id_city) VALUES
('Valeria',  'Castillo', 'valeria@nearme.com.ar', 'pass123', '34150001', 'Av. Illia 100',          1),
('Alejo',    'Gomez',    'alejo@gmail.com',        'pass123', '34150002', 'Fuerza Aérea 500',       1),
('Martin',   'Perez',    'martin@gmail.com',       'pass123', '34150003', 'San José 200',           2),
('Lucía',    'Rodriguez','lucia@gmail.com',         'pass123', '34150004', 'Ruta 34 km 5',           3),
('Tomas',    'Blanco',   'tomas@gmail.com',         'pass123', '34150005', 'Mitre 50',               1),
('Elena',    'Torres',   'elena@gmail.com',          'pass123', '34150006', 'Pellegrini 800',         2),
('Marcos',   'Ruiz',     'marcos@gmail.com',         'pass123', '34150007', 'Los Horneros 12',        3),
('Sofia',    'Lopez',    'sofia@gmail.com',           'pass123', '34150008', 'Hipólito Yrigoyen 400', 1),
('Bruno',    'Diaz',     'bruno@gmail.com',           'pass123', '34150009', 'Echagüe 150',           2),
('Clara',    'Sosa',     'clara@gmail.com',           'pass123', '34150010', 'Belgrano 300',          3),
('Juan',     'Castillo', 'juan@test.com',             '123',     '001',      'Dir 1',                 1),
('Marta',    'Galli',    'marta@test.com',            '123',     '002',      'Dir 2',                 1),
('Pedro',    'Vazquez',  'pedro@test.com',            '123',     '003',      'Dir 3',                 2),
('Ana',      'Rios',     'ana@test.com',              '123',     '004',      'Dir 4',                 2),
('Hugo',     'Luna',     'hugo@test.com',             '123',     '005',      'Dir 5',                 3),
('Ines',     'Moro',     'ines@test.com',             '123',     '006',      'Dir 6',                 3),
('Raul',     'Peña',     'raul@test.com',             '123',     '007',      'Dir 7',                 1),
('Silvia',   'Duarte',   'silvia@test.com',           '123',     '008',      'Dir 8',                 2),
('Jorge',    'Manso',    'jorge@test.com',            '123',     '009',      'Dir 9',                 3),
('Paula',    'Briz',     'paula@test.com',            '123',     '010',      'Dir 10',                1),
('Luis',     'Vega',     'luis@test.com',             '123',     '011',      'Dir 11',                1),
('Rosa',     'Campo',    'rosa@test.com',             '123',     '012',      'Dir 12',                2),
('Enzo',     'Ferrari',  'enzo@test.com',             '123',     '013',      'Dir 13',                3),
('Gisela',   'Ponte',    'gisela@test.com',           '123',     '014',      'Dir 14',                1),
('Oscar',    'Luz',      'oscar@test.com',            '123',     '015',      'Dir 15',                2),
('Teresa',   'Nave',     'teresa@test.com',           '123',     '016',      'Dir 16',                3),
('Dante',    'Alba',     'dante@test.com',            '123',     '017',      'Dir 17',                1),
('Nora',     'Vidal',    'nora@test.com',             '123',     '018',      'Dir 18',                2),
('Fabio',    'Guerra',   'fabio@test.com',            '123',     '019',      'Dir 19',                3),
('Rocio',    'Paz',      'rocio@test.com',            '123',     '020',      'Dir 20',                1);

-- USUARIOS ADICIONALES (ROSARIO, BAIGORRIA, PEREZ)
INSERT INTO user (first_name, last_name, email, password, phone, address, id_city) VALUES
('Camila',      'Ferreyra',  'camila.f@gmail.com',    'pass', '3414000101', 'San Martín 1200',       4),
('Nicolás',     'Herrera',   'nicolas.h@gmail.com',   'pass', '3414000102', 'Mitre 450',             4),
('Valentina',   'Acosta',    'valentina.a@gmail.com', 'pass', '3414000103', 'Pellegrini 300',        4),
('Ignacio',     'Molina',    'ignacio.m@gmail.com',   'pass', '3414000104', 'Corrientes 800',        4),
('Florencia',   'Medina',    'florencia.m@gmail.com', 'pass', '3414000105', 'Mendoza 1500',          4),
('Rodrigo',     'Jimenez',   'rodrigo.j@gmail.com',   'pass', '3414000106', 'Entre Ríos 200',        5),
('Agustina',    'Romero',    'agustina.r@gmail.com',  'pass', '3414000107', 'Av. San Martín 600',    5),
('Ezequiel',    'Alvarez',   'ezequiel.a@gmail.com',  'pass', '3414000108', 'Belgrano 900',          5),
('Micaela',     'Moreno',    'micaela.mo@gmail.com',  'pass', '3414000109', 'Ruta 11 km 2',          5),
('Leandro',     'Vargas',    'leandro.v@gmail.com',   'pass', '3414000110', 'Los Aromos 45',         5),
('Antonella',   'Cruz',      'antonella.c@gmail.com', 'pass', '3414000111', 'Lavalle 300',           6),
('Matías',      'Ortega',    'matias.or@gmail.com',   'pass', '3414000112', 'Rivadavia 700',         6),
('Luciana',     'Mendez',    'luciana.me@gmail.com',  'pass', '3414000113', 'Av. Perón 1200',        6),
('Tomás',       'Ibañez',    'tomas.ib@gmail.com',    'pass', '3414000114', 'Hipólito Yrigoyen 55',  6),
('Renata',      'Suarez',    'renata.s@gmail.com',    'pass', '3414000115', 'Sarmiento 800',         1),
('Benjamín',    'Rios',      'benjamin.r@gmail.com',  'pass', '3414000116', 'Catamarca 120',         1),
('Julieta',     'Ponce',     'julieta.p@gmail.com',   'pass', '3414000117', 'Echagüe 600',           2),
('Facundo',     'Cabrera',   'facundo.c@gmail.com',   'pass', '3414000118', 'Mitre 900',             2),
('Milagros',    'Godoy',     'milagros.g@gmail.com',  'pass', '3414000119', 'Bv. Roca 1100',         3),
('Sebastián',   'Peralta',   'sebastian.p@gmail.com', 'pass', '3414000120', 'Ruta 34 km 8',          3),
('Carolina',    'Rojas',     'carolina.ro@gmail.com', 'pass', '3414000121', 'Los Pinos 200',         4),
('Maximiliano', 'Flores',    'maxi.fl@gmail.com',     'pass', '3414000122', 'San Lorenzo 400',       4),
('Aldana',      'Quiroga',   'aldana.q@gmail.com',    'pass', '3414000123', 'Tucumán 600',           4),
('Gonzalo',     'Vera',      'gonzalo.v@gmail.com',   'pass', '3414000124', 'Córdoba 1800',          5),
('Brenda',      'Salas',     'brenda.s@gmail.com',    'pass', '3414000125', 'Av. Independencia 300', 5),
('Ramiro',      'Castañeda', 'ramiro.ca@gmail.com',   'pass', '3414000126', 'Rivadavia 1200',        6),
('Yamila',      'Benítez',   'yamila.b@gmail.com',    'pass', '3414000127', 'Belgrano 450',          6),
('Diego',       'Leiva',     'diego.le@gmail.com',    'pass', '3414000128', 'Salta 900',             1),
('Nadia',       'Espinoza',  'nadia.e@gmail.com',     'pass', '3414000129', 'Reconquista 200',       2),
('Cristian',    'Paredes',   'cristian.pa@gmail.com', 'pass', '3414000130', 'Av. Francia 1500',      4);

-- =====================================================
-- 5. COMERCIOS
-- =====================================================

-- COMERCIOS ORIGINALES (FUNES, ROLDAN, IBARLUCEA)
INSERT INTO business (business, id_category, id_city, address) VALUES
('Gym Funes',            2, 1, 'Fuerza Aerea 1900'),
('Kiosco 24hs',          5, 2, 'Bv San Martin 500'),
('Taller Mecánico',      3, 3, 'Av Central 44'),
('Instituto de Inglés',  4, 1, 'Catamarca 120'),
('Carnicería El Cholo',  5, 2, 'Echague 900'),
('Clinica Dental',       2, 3, 'Ibarlucea Centro 5'),
('Resto Bar 1910',       1, 1, 'Ruta 9 2000'),
('Gasista Matriculado',  3, 2, 'Tierra de Sueños 2'),
('Librería Escolar',     4, 3, 'Ruta 34 500'),
('Super Chino',          5, 1, 'Mitre 200'),
('Veterinaria Funes',    2, 1, 'Angelomé 1300'),
('Pinturería Color',     3, 2, 'Ruta 9 km 320'),
('Escuela de Danzas',    4, 3, 'Calle Pública 1'),
('Market Saludable',     5, 1, 'Suipacha 45'),
('Restaurante La Posta', 1, 2, 'AO12 y Ruta 9'),
('Pediatra Online',      2, 3, 'Telemedicina Local'),
('Electricista 24/7',    3, 1, 'Servicio a Domicilio'),
('Capacitación IT',      4, 2, 'Coworking Roldán'),
('Express Market',       5, 3, 'Calle del Sol 4'),
('Bodegón Familiar',     1, 1, 'Sarmiento 400');

-- COMERCIOS ADICIONALES (ROSARIO, BAIGORRIA, PEREZ)
INSERT INTO business (business, id_category, id_city, address) VALUES
('Ropa Sport Rosario',    6,  4, 'Corrientes 1200'),
('TechFix Rosario',       7,  4, 'San Martín 800'),
('Salón Belleza Camila',  8,  4, 'Mitre 350'),
('Crossfit Baigorria',    9,  5, 'Av. San Martín 400'),
('Veterinaria Huellitas', 10, 5, 'Belgrano 600'),
('Super DIA Pérez',       5,  6, 'Lavalle 800'),
('Pizzería Don Roque',    1,  4, 'Entre Ríos 1100'),
('Farmacia del Centro',   2,  4, 'Corrientes 400'),
('Plomero Express',       3,  5, 'Ruta 11 km 3'),
('Instituto Mandarin',    4,  6, 'Rivadavia 500'),
('Ropa Kids Funes',       6,  1, 'Av. Illia 300'),
('Notebook Repair',       7,  2, 'Bv. San Martín 700'),
('Peluquería El Barrio',  8,  3, 'Calle Pública 5'),
('Club Deportivo Funes',  9,  1, 'Parque Municipal s/n'),
('Pet Shop Roldán',       10, 2, 'Echagüe 400'),
('Verdulería La Huerta',  5,  4, 'Mendoza 900'),
('Sushi & Más',           1,  4, 'Pellegrini 600'),
('Centro Médico Norte',   2,  5, 'Av. San Martín 1200'),
('Pintura y Deco',        3,  6, 'Sarmiento 300'),
('Jardín de Infantes Sol',4,  4, 'Tucumán 200');

-- =====================================================
-- 6. HORARIOS DE COMERCIOS
-- =====================================================

-- GYM FUNES (id=1)
INSERT INTO business_hours (id_business, day_of_week, open_time, close_time, is_closed) VALUES
(1, 'Lunes',     '07:00:00', '22:00:00', FALSE),
(1, 'Martes',    '07:00:00', '22:00:00', FALSE),
(1, 'Miércoles', '07:00:00', '22:00:00', FALSE),
(1, 'Jueves',    '07:00:00', '22:00:00', FALSE),
(1, 'Viernes',   '07:00:00', '21:00:00', FALSE),
(1, 'Sábado',    '09:00:00', '14:00:00', FALSE),
(1, 'Domingo',   NULL,        NULL,       TRUE);

-- KIOSCO 24HS (id=2)
INSERT INTO business_hours (id_business, day_of_week, open_time, close_time, is_closed) VALUES
(2, 'Lunes',     '00:00:00', '23:59:00', FALSE),
(2, 'Martes',    '00:00:00', '23:59:00', FALSE),
(2, 'Miércoles', '00:00:00', '23:59:00', FALSE),
(2, 'Jueves',    '00:00:00', '23:59:00', FALSE),
(2, 'Viernes',   '00:00:00', '23:59:00', FALSE),
(2, 'Sábado',    '00:00:00', '23:59:00', FALSE),
(2, 'Domingo',   '00:00:00', '23:59:00', FALSE);

-- RESTO BAR 1910 (id=7)
INSERT INTO business_hours (id_business, day_of_week, open_time, close_time, is_closed) VALUES
(7, 'Lunes',     NULL,        NULL,       TRUE),
(7, 'Martes',    '12:00:00', '23:00:00', FALSE),
(7, 'Miércoles', '12:00:00', '23:00:00', FALSE),
(7, 'Jueves',    '12:00:00', '23:00:00', FALSE),
(7, 'Viernes',   '12:00:00', '00:00:00', FALSE),
(7, 'Sábado',    '12:00:00', '01:00:00', FALSE),
(7, 'Domingo',   '12:00:00', '22:00:00', FALSE);

-- =====================================================
-- 7. TELEFONOS DE COMERCIOS
-- =====================================================

INSERT INTO business_phone (id_business, phone, label) VALUES
(1,  '3415-100001', 'WhatsApp'),
(1,  '341-4500100', 'Fijo'),
(2,  '3415-100002', 'WhatsApp'),
(3,  '3415-100003', 'WhatsApp'),
(4,  '341-4500104', 'Informes'),
(5,  '341-4500105', 'Fijo'),
(6,  '341-4500106', 'Turnos'),
(7,  '3415-100007', 'WhatsApp'),
(7,  '341-4500107', 'Reservas'),
(8,  '3415-100008', 'WhatsApp'),
(9,  '341-4500109', 'Fijo'),
(10, '3415-100010', 'WhatsApp');

-- =====================================================
-- 8. ETIQUETAS POR COMERCIO
-- =====================================================

INSERT INTO business_tag (id_business, id_tag) VALUES
(1,  1), (1,  5), (1,  6),   -- GYM FUNES
(2,  2), (2,  6),             -- KIOSCO 24HS
(3,  8), (3,  2),             -- TALLER MECANICO
(4,  1), (4,  7),             -- INSTITUTO DE INGLES
(5,  2), (5,  5),             -- CARNICERIA EL CHOLO
(6,  1), (6,  7),             -- CLINICA DENTAL
(7,  1), (7,  4), (7,  5), (7, 9), (7, 10), -- RESTO BAR 1910
(8,  8), (8,  2),             -- GASISTA MATRICULADO
(9,  1),                      -- LIBRERIA ESCOLAR
(10, 1), (10, 2),             -- SUPER CHINO
(11, 1), (11, 7),             -- VETERINARIA FUNES
(15, 1), (15, 4), (15, 9);   -- RESTAURANTE LA POSTA

-- =====================================================
-- 9. RESEÑAS
-- =====================================================

-- RESEÑAS ORIGINALES
INSERT INTO review (id_business, id_user, score, comment, created_at) VALUES
(1,  1,  5, 'La mejor pizza de la zona!',              '2026-03-22 23:08:07'),
(7,  1,  4, 'Muy rico el sushi, demora un poco.',      '2026-03-22 23:08:07'),
(1,  2,  4, 'Buena relación precio calidad.',          '2026-03-22 23:08:07'),
(2,  3,  5, 'Riquísimos los gustos frutales.',         '2026-03-22 23:08:07'),
(3,  4,  5, 'Atención excelente en la farmacia.',      '2026-03-22 23:08:07'),
(4,  1,  5, 'Mis hijos van felices.',                  '2026-03-22 23:08:07'),
(4,  2,  4, 'Buen nivel académico.',                   '2026-03-22 23:08:07'),
(5,  1,  2, 'Mucho tiempo de espera en caja.',         '2026-03-22 23:08:07'),
(5,  5,  5, 'Buenos precios.',                         '2026-03-22 23:08:07'),
(6,  6,  3, 'No tenían stock de lo que buscaba.',      '2026-03-22 23:08:07'),
(8,  1,  5, 'Profesionales excelentes.',               '2026-03-22 23:08:07'),
(10, 1,  4, 'Lugar agradable.',                        '2026-03-22 23:08:07'),
(1,  11, 5, 'Recomendado.',                            '2026-03-22 23:08:07'),
(2,  11, 5, 'Genial.',                                 '2026-03-22 23:08:07'),
(1,  12, 4, 'Ok.',                                     '2026-03-22 23:08:07'),
(5,  12, 4, 'Bueno.',                                  '2026-03-22 23:08:07'),
(7,  13, 5, 'Excelente!',                              '2026-03-22 23:08:07'),
(8,  13, 5, 'Muy bueno.',                              '2026-03-22 23:08:07'),
(1,  14, 2, 'No me gustó.',                            '2026-03-22 23:08:07'),
(2,  14, 1, 'Pésimo.',                                 '2026-03-22 23:08:07'),
(3,  14, 3, 'Zafa.',                                   '2026-03-22 23:08:07'),
(4,  15, 5, 'Increíble.',                              '2026-03-22 23:08:07'),
(10, 15, 5, 'Perfecto.',                               '2026-03-22 23:08:07'),
(1,  16, 4, 'Volveré.',                                '2026-03-22 23:08:07'),
(5,  16, 5, 'Súper.',                                  '2026-03-22 23:08:07'),
(7,  17, 5, 'Me encantó.',                             '2026-03-22 23:08:07'),
(8,  18, 5, 'Atención 10 puntos.',                     '2026-03-22 23:08:07'),
(9,  19, 4, 'Rápido.',                                 '2026-03-22 23:08:07'),
(10, 20, 5, 'Volvería mil veces.',                     '2026-03-22 23:08:07'),
(1,  21, 5, 'Sin palabras, muy bueno.',                '2026-03-22 23:08:07');

-- RESEÑAS ENERO 2026
INSERT INTO review (id_business, id_user, score, comment, created_at) VALUES
(21, 31, 5, 'Muy buena ropa deportiva, precios razonables.',        '2026-01-03 13:15:00'),
(22, 32, 4, 'Me arreglaron el celular rápido.',                     '2026-01-05 17:30:00'),
(23, 33, 5, 'El salón de belleza es increíble, muy profesionales.', '2026-01-07 14:00:00'),
(24, 34, 5, 'El crossfit de Baigorria es de primer nivel.',         '2026-01-08 12:00:00'),
(7,  35, 4, 'El bodegón muy rico, buena atención.',                 '2026-01-10 23:00:00'),
(1,  36, 5, 'El gym de Funes mejoró mucho.',                        '2026-01-12 11:00:00'),
(15, 37, 5, 'El restaurante La Posta es excelente.',                '2026-01-15 00:00:00'),
(10, 38, 3, 'El super chino regular, poca variedad.',               '2026-01-15 20:00:00'),
(27, 39, 5, 'La pizzería de Rosario es espectacular.',              '2026-01-17 22:30:00'),
(28, 40, 5, 'La farmacia muy completa y buena atención.',           '2026-01-18 13:00:00'),
(4,  41, 4, 'El instituto de inglés tiene buenos profesores.',      '2026-01-20 19:00:00'),
(11, 42, 5, 'La veterinaria de Funes es excelente.',                '2026-01-22 14:30:00'),
(6,  43, 4, 'La clínica dental muy buena.',                         '2026-01-24 13:00:00'),
(20, 44, 5, 'El bodegón familiar muy rico.',                        '2026-01-26 00:00:00'),
(25, 45, 3, 'La veterinaria Huellitas bien pero cara.',             '2026-01-26 18:00:00');

-- RESEÑAS FEBRERO 2026
INSERT INTO review (id_business, id_user, score, comment, created_at) VALUES
(37, 31, 5, 'El sushi de Rosario es buenísimo.',                    '2026-02-01 23:00:00'),
(21, 46, 4, 'Buena ropa, buen precio.',                             '2026-02-02 15:00:00'),
(22, 47, 5, 'TechFix resolvió todo en el día.',                     '2026-02-03 17:00:00'),
(30, 48, 4, 'El instituto Mandarin tiene buen nivel.',              '2026-02-05 20:00:00'),
(7,  49, 5, 'Volví al Resto Bar, siempre rico.',                    '2026-02-07 00:00:00'),
(1,  50, 4, 'Buen gym, me gusta la variedad de clases.',            '2026-02-08 10:30:00'),
(24, 31, 5, 'El mejor crossfit de la zona sin dudas.',              '2026-02-09 12:00:00'),
(27, 32, 4, 'Buena pizza, un poco de espera.',                      '2026-02-10 22:00:00'),
(15, 33, 5, 'La Posta tiene la mejor provoleta.',                   '2026-02-11 23:30:00'),
(23, 34, 4, 'El salón de belleza muy prolijo.',                     '2026-02-12 14:00:00'),
(28, 35, 5, 'La farmacia tiene todo lo que necesitás.',             '2026-02-13 13:00:00'),
(10, 36, 4, 'El super chino mejoró bastante.',                      '2026-02-14 21:00:00'),
(4,  37, 5, 'Inglés con muy buen método de enseñanza.',             '2026-02-15 19:00:00'),
(34, 38, 5, 'El club deportivo de Funes es genial para los chicos.','2026-02-17 20:00:00'),
(11, 39, 4, 'La veterinaria muy buena y cómoda.',                   '2026-02-18 15:00:00'),
(20, 40, 3, 'El bodegón bien pero muy lleno los fines de semana.',  '2026-02-21 01:00:00'),
(36, 41, 4, 'El super DIA de Pérez bien surtido.',                  '2026-02-21 13:30:00'),
(25, 42, 5, 'Huellitas, excelente atención para mi perro.',         '2026-02-22 14:00:00'),
(6,  43, 5, 'La clínica dental muy profesional.',                   '2026-02-23 12:30:00'),
(37, 44, 5, 'Sushi increíble, volveré siempre.',                    '2026-02-24 23:00:00');

-- RESEÑAS MARZO 2026
INSERT INTO review (id_business, id_user, score, comment, created_at) VALUES
(21, 45, 5, 'La mejor tienda deportiva de la zona.',                '2026-03-01 14:00:00'),
(22, 46, 3, 'El celular tardó más de lo esperado.',                 '2026-03-02 18:00:00'),
(27, 47, 5, 'Pizza espectacular, masa muy finita.',                 '2026-03-03 23:00:00'),
(28, 48, 4, 'Farmacia con buena atención al público.',              '2026-03-04 12:00:00'),
(24, 49, 4, 'Crossfit muy exigente, me encanta.',                   '2026-03-05 11:00:00'),
(7,  50, 5, 'El bar siempre en su punto.',                          '2026-03-07 00:30:00'),
(38, 31, 5, 'El centro médico de Baigorria es muy completo.',       '2026-03-07 13:00:00'),
(15, 32, 4, 'La Posta sigue siendo referente gastronómico.',        '2026-03-08 23:00:00'),
(1,  33, 5, 'El gym Funes incorporó nuevas máquinas.',              '2026-03-09 10:00:00'),
(23, 34, 5, 'Salón de belleza top, muy recomendado.',               '2026-03-10 15:00:00'),
(34, 35, 4, 'Club deportivo muy bien organizado.',                  '2026-03-11 20:00:00'),
(4,  36, 3, 'El inglés bien pero los horarios son difíciles.',      '2026-03-12 19:30:00'),
(36, 37, 5, 'El DIA de Pérez renovó la sección de frescos.',        '2026-03-13 14:00:00'),
(11, 38, 5, 'La veterinaria de Funes tiene médicos excelentes.',    '2026-03-14 13:00:00'),
(37, 39, 4, 'Sushi rico aunque le faltó un poco de sazón.',        '2026-03-15 22:00:00'),
(10, 40, 2, 'El super chino bajó la calidad de sus productos.',     '2026-03-16 21:00:00'),
(25, 41, 4, 'Veterinaria Huellitas, atención rápida.',              '2026-03-17 14:30:00'),
(20, 42, 5, 'El bodegón familiar nunca falla.',                     '2026-03-19 00:00:00'),
(30, 43, 5, 'Instituto Mandarin excelente nivel de enseñanza.',     '2026-03-19 20:00:00'),
(6,  44, 3, 'La clínica dental tardó mucho en atenderme.',          '2026-03-20 12:00:00'),
(21, 45, 4, 'Buena variedad en ropa sport.',                        '2026-03-21 15:00:00'),
(22, 46, 5, 'Repararon mi notebook, servicio impecable.',           '2026-03-22 17:00:00'),
(27, 47, 3, 'La pizza estuvo fría al llegar.',                      '2026-03-23 23:30:00'),
(28, 48, 5, 'La farmacia es muy completa.',                         '2026-03-24 13:00:00'),
(38, 49, 4, 'Centro médico muy bien equipado.',                     '2026-03-25 14:00:00'),
(7,  50, 4, 'Resto Bar con buena propuesta gastronómica.',          '2026-03-27 00:00:00'),
(15, 31, 5, 'La Posta superó mis expectativas.',                    '2026-03-27 23:00:00'),
(34, 32, 5, 'Los chicos aman el club deportivo.',                   '2026-03-28 19:00:00'),
(1,  33, 4, 'El gym muy limpio y bien organizado.',                 '2026-03-29 11:00:00'),
(20, 34, 2, 'Bodegón muy ruidoso, no pude disfrutar la comida.',    '2026-03-30 01:00:00');

-- =====================================================
-- 10. FAVORITOS
-- =====================================================

INSERT INTO user_favorite (id_user, id_business) VALUES
-- USUARIOS ORIGINALES
(1, 7),  (1, 10), (1, 4),
(2, 1),  (2, 7),
(3, 15), (3, 5),
(4, 6),  (4, 3),
(5, 10), (5, 1),  (5, 7),
(6, 4),  (6, 8),
(7, 9),  (7, 15),
(8, 7),  (8, 10),
(9, 1),  (9, 4),
(10, 6), (10, 11),
-- USUARIOS ADICIONALES
(31, 27),(31, 24),(31, 21),
(32, 37),(32, 27),(32, 22),
(33, 23),(33, 15),(33, 7),
(34, 24),(34, 38),(34, 1),
(35, 28),(35, 7), (35, 15),
(36, 1), (36, 4),
(37, 15),(37, 37),
(38, 34),(38, 24),
(39, 27),(39, 7),
(40, 37),(40, 15),
(41, 4), (41, 30),
(42, 11),(42, 25),
(43, 6), (43, 28),
(44, 20),(44, 37),
(45, 21),(45, 34),
(46, 22),(46, 30),
(47, 27),(47, 15),
(48, 28),(48, 38),
(49, 24),(49, 1),
(50, 7), (50, 37);

-- =====================================================
-- 11. RECLAMOS DE COMERCIOS
-- =====================================================

INSERT INTO business_claim (id_business, id_user, status, resolved_at, notes) VALUES
(7,  1, 'aprobado',  '2026-01-15 13:00:00', 'Documentación verificada correctamente.'),
(15, 3, 'aprobado',  '2026-02-01 14:30:00', 'Titular confirmado por CUIT.'),
(1,  2, 'pendiente', NULL,                  'Esperando documentación respaldatoria.'),
(10, 5, 'rechazado', '2026-03-10 12:00:00', 'No se pudo verificar titularidad.'),
(4,  6, 'pendiente', NULL,                   NULL);

-- =====================================================
-- 12. REPORTES DE RESEÑAS
-- =====================================================

INSERT INTO report (id_review, id_user, reason, status) VALUES
(14, 5,  'La reseña parece ser de un competidor, no un cliente real.', 'pendiente'),
(20, 3,  'Lenguaje ofensivo en el comentario.',                        'resuelto'),
(19, 8,  'Reseña duplicada del mismo usuario.',                        'pendiente'),
(1,  12, 'Calificación sin justificación.',                            'descartado');

-- =====================================================
-- 13. POBLAR TABLA DE HECHOS (fact_reviews_summary)
-- =====================================================

CALL sp_refresh_summary(1);
CALL sp_refresh_summary(2);
CALL sp_refresh_summary(3);
CALL sp_refresh_summary(4);
CALL sp_refresh_summary(5);
CALL sp_refresh_summary(6);
CALL sp_refresh_summary(7);
CALL sp_refresh_summary(8);
CALL sp_refresh_summary(9);
CALL sp_refresh_summary(10);
CALL sp_refresh_summary(11);
CALL sp_refresh_summary(15);
CALL sp_refresh_summary(20);
CALL sp_refresh_summary(21);
CALL sp_refresh_summary(22);
CALL sp_refresh_summary(23);
CALL sp_refresh_summary(24);
CALL sp_refresh_summary(25);
CALL sp_refresh_summary(27);
CALL sp_refresh_summary(28);
CALL sp_refresh_summary(30);
CALL sp_refresh_summary(34);
CALL sp_refresh_summary(36);
CALL sp_refresh_summary(37);
CALL sp_refresh_summary(38);

-- =====================================================
-- VERIFICACION FINAL
-- =====================================================

SELECT 'Usuarios'   AS tabla, COUNT(*) AS registros FROM user
UNION ALL
SELECT 'Comercios',                                    COUNT(*) FROM business
UNION ALL
SELECT 'Reseñas',                                      COUNT(*) FROM review
UNION ALL
SELECT 'Categorías',                                   COUNT(*) FROM category
UNION ALL
SELECT 'Ciudades',                                     COUNT(*) FROM city
UNION ALL
SELECT 'Favoritos',                                    COUNT(*) FROM user_favorite
UNION ALL
SELECT 'Horarios',                                     COUNT(*) FROM business_hours
UNION ALL
SELECT 'Teléfonos',                                    COUNT(*) FROM business_phone
UNION ALL
SELECT 'Reclamos',                                     COUNT(*) FROM business_claim
UNION ALL
SELECT 'Reportes',                                     COUNT(*) FROM report
UNION ALL
SELECT 'Etiquetas',                                    COUNT(*) FROM tag
UNION ALL
SELECT 'Resúmenes fact',                               COUNT(*) FROM fact_reviews_summary;
