-- CREACION DE LA BASE DE DATOS
CREATE DATABASE IF NOT EXISTS near_me;
USE near_me;

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

-- 5. TABLA COMERCIO
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

-- 6. TABLA USUARIO
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

-- 7. TABLA RESEÑA
CREATE TABLE review (
    id_review INT PRIMARY KEY AUTO_INCREMENT,
    id_business INT,
    id_user INT,
    score INT CHECK (score BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- FECHA DE CREACION DE LA RESEÑA
    CONSTRAINT fk_review_business 
        FOREIGN KEY (id_business) REFERENCES business(id_business),
    CONSTRAINT fk_review_user 
        FOREIGN KEY (id_user) REFERENCES user(id_user)
);

-- INDICES PARA OPTIMIZACION DE BUSQUEDAS Y FILTROS
CREATE INDEX idx_business_review ON review(id_business);
CREATE INDEX idx_user_email ON user(email);
CREATE INDEX idx_user_city ON user(id_city);