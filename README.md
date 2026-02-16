# NearMe - Conectando la red de confianza local

## 📌 Descripción del Proyecto
**NearMe** es una solución de base de datos diseñada para centralizar y organizar la oferta comercial y de servicios en las zonas de **Funes, Roldán e Ibarlucea** (Santa Fe, Argentina). El proyecto surge para resolver la fragmentación de información que enfrentan los nuevos residentes en estas áreas de crecimiento demográfico.

Este repositorio contiene la **Entrega 1** del proyecto final, centrada en el diseño del modelo entidad-relación y el script de creación de objetos.

## 🚀 Objetivo
El sistema busca:
* **Geolocalización precisa:** Organizar datos jerárquicamente para búsquedas eficientes por ciudad.
* **Validación comunitaria:** Implementar un sistema de reseñas para auditar la calidad de los comercios.
* **Persistencia y Auditoría:** Utilizar técnicas de borrado lógico (`deleted_at`) y marcas temporales (`created_at`) para el análisis de datos históricos.

## 📊 Modelo Entidad-Relación (DER)
El diseño se basa en un esquema relacional normalizado que incluye 7 tablas principales:
1. **country / state / city**: Jerarquía geográfica.
2. **category / business**: Catálogo de servicios por rubro.
3. **user**: Registro de residentes con ubicación vinculada.
4. **review**: Interacción y valoración entre usuarios y comercios.


## 🛠️ Tecnologías Utilizadas
* **Motor de DB:** MySQL.
* **Modelado:** MySQL Workbench.
* **Lenguaje:** SQL (DDL).

## 📂 Estructura del Repositorio
* `/near_me.sql`: Script principal que contiene la creación de la base de datos, tablas, restricciones de integridad (FK) e índices de optimización.

## 📝 Convenciones de Código Aplicadas
Para asegurar la mantenibilidad y calidad del código, se aplicaron las siguientes reglas:
* **Palabras reservadas SQL:** Escritas siempre en MAYÚSCULAS.
* **Nomenclatura de objetos:** Todo en minúsculas y `snake_case`.
* **Comentarios:** Documentación interna del script escrita en MAYÚSCULAS para mayor visibilidad.
* **Identación:** Código estructurado para facilitar la lectura de constraints y relaciones.

---
**Desarrollado por:** Valeria Castillo - Ingeniería en Sistemas
**Año:** 2026
