# NearMe — Conectando la Red de Confianza Local

## 📌 Descripción del Proyecto
**NearMe** es una solución de base de datos diseñada para centralizar y organizar la oferta comercial y de servicios locales en zonas de crecimiento residencial del Gran Rosario: **Funes, Roldán, Ibarlucea, Granadero Baigorria, Pérez y Rosario** (Santa Fe, Argentina).

La plataforma digitaliza el "boca a boca" barrial, conectando a nuevos residentes con los comercios y servicios esenciales de su zona a través de un sistema de reseñas comunitarias.

---

## 🎯 Objetivo
Proveer una infraestructura de datos robusta que permita:
- **Geolocalización precisa:** Jerarquía geográfica País > Provincia > Ciudad para búsquedas eficientes.
- **Validación comunitaria:** Sistema de reseñas con puntaje y comentarios para auditar la calidad de los servicios.
- **Persistencia y Auditoría:** Borrado lógico (`deleted_at`, `is_active`) y marcas temporales para análisis histórico.
- **Analítica:** Métricas precalculadas en tabla de hechos para reportes de performance comercial.

---

## 🗄️ Modelo de Datos

### Tablas (16 en total)

| Tabla | Tipo | Descripción |
|-------|------|-------------|
| `country` | Dimensión | Catálogo de países |
| `state` | Dimensión | Provincias vinculadas a un país |
| `city` | Dimensión | Localidades vinculadas a una provincia |
| `category` | Dimensión | Rubros de servicios (Gastronomía, Salud, etc.) |
| `tag` | Dimensión | Etiquetas descriptivas para comercios |
| `business` | Dimensión | Comercios o prestadores registrados |
| `business_hours` | Soporte | Horarios de atención por día de la semana |
| `business_phone` | Soporte | Teléfonos de contacto por comercio |
| `business_tag` | Soporte (N:M) | Relación entre comercios y etiquetas |
| `user` | Dimensión | Usuarios residentes registrados |
| `review` | Transaccional | Valoraciones y comentarios de usuarios |
| `user_favorite` | Transaccional | Comercios guardados como favoritos |
| `business_claim` | Transaccional | Reclamos de gestión de comercio por dueños |
| `report` | Soporte | Reportes de reseñas inapropiadas |
| `audit_log` | Hechos | Registro automático de cambios críticos |
| `fact_reviews_summary` | Hechos | Métricas precalculadas de reseñas por comercio |

---

## 🔧 Objetos de Base de Datos

### Vistas (8)
| Vista | Descripción |
|-------|-------------|
| `vw_business_full_data` | Reporte integral de todos los comercios con jerarquía geográfica |
| `vw_active_business_details` | Comercios activos — fuente principal para la interfaz de usuario |
| `vw_user_activity` | Conteo total de reseñas por usuario |
| `vw_top_rated_business` | Comercios con promedio superior a 4 estrellas |
| `vw_top_reviewers` | Ranking de usuarios activos por cantidad de reseñas |
| `vw_top_10_reviewers` | Top 10 usuarios más activos |
| `vw_business_with_hours` | Comercios activos con sus horarios de atención |
| `vw_business_performance` | Performance consolidada de comercios con métricas de reseñas |

### Funciones (5)
| Función | Descripción |
|---------|-------------|
| `fn_get_average_score(id)` | Retorna el promedio de calificaciones de un comercio |
| `fn_is_user_active(id)` | Valida si un usuario está activo (deleted_at IS NULL) |
| `fn_format_location(id)` | Retorna la ubicación formateada "Ciudad, Provincia" |
| `fn_count_favorites(id)` | Retorna la cantidad de veces que un comercio fue guardado como favorito |
| `fn_busiest_day(id)` | Retorna el día de la semana con más reseñas para un comercio |

### Stored Procedures (6)
| SP | Descripción |
|----|-------------|
| `sp_register_business_safe` | Registra un comercio validando que no exista duplicado por dirección |
| `sp_soft_delete_business` | Baja lógica de un comercio (is_active = FALSE) |
| `sp_get_business_report` | Reporte integral de un comercio con promedio y reseñas |
| `sp_add_review_safe` | Inserta una reseña validando que el usuario esté activo |
| `sp_soft_delete_user` | Baja lógica de un usuario registrando deleted_at |
| `sp_refresh_summary` | Recalcula las métricas de fact_reviews_summary para un comercio |

### Triggers (4)
| Trigger | Evento | Descripción |
|---------|--------|-------------|
| `tr_audit_business_update` | BEFORE UPDATE en `business` | Actualiza updated_at automáticamente |
| `tr_prevent_invalid_score` | BEFORE INSERT en `review` | Valida que el score esté entre 1 y 5 |
| `tr_log_business_changes` | AFTER UPDATE en `business` | Registra bajas lógicas en audit_log |
| `tr_update_summary_on_review` | AFTER INSERT en `review` | Actualiza fact_reviews_summary en tiempo real |

---

## 📊 Informe Analítico

Se utilizó **Tableau Public** para el análisis visual de los datos. Se construyeron 2 dashboards con 7 visualizaciones:

**Dashboard 1 — Satisfacción Comercial por Zona y Categoría**
- Evolución mensual de reseñas (line chart)
- Heatmap ciudad × rubro por score promedio
- Score promedio por rubro y ciudad (bar chart)
- Ranking de comercios por reputación (bar chart)

**Dashboard 2 — Comportamiento de la Comunidad**
- Top reviewers
- Distribución de puntajes por sentimiento (donut chart)
- Día de la semana con más reseñas (bar chart)

**Principales hallazgos:**
- El 85,26% de las reseñas son positivas (score ≥ 4)
- La actividad creció un 237% entre enero y marzo 2026
- Salud y Deportes son los rubros mejor valorados
- El domingo concentra el 43% de la actividad semanal

---

## 📂 Estructura del Repositorio

```
/
├── Near_Me_Completo.sql          → Estructura completa: 16 tablas, 8 vistas,
│                                    5 funciones, 6 SPs, 4 triggers
├── Near_Me_Completo_Datos.sql    → Datos completos: 60 usuarios, 40 comercios,
│                                    95 reseñas y demás registros
├── Near_Me_Informes.sql          → 8 consultas analíticas + flat table para Tableau
└── README.md                     → Este archivo
```

---

## ⚙️ Instrucciones de Ejecución

Ejecutar los scripts en este orden:

```
1. Near_Me_Completo.sql         → Crea la estructura de la base de datos
2. Near_Me_Completo_Datos.sql   → Inserta todos los datos
3. Near_Me_Informes.sql         → Ejecuta los informes analíticos (opcional)
```

> **Requisito:** MySQL Server 8.0 o superior.

---

## 🛠️ Herramientas y Tecnologías

| Herramienta | Uso |
|-------------|-----|
| MySQL 8.0 | Motor de base de datos relacional |
| MySQL Workbench | Modelado, administración y exportación de scripts |
| Tableau Public | Visualización y análisis de datos |
| Canva | Documentación y presentación del proyecto |
| GitHub | Control de versiones y repositorio del proyecto |

---

## 📝 Convenciones de Código

- **Palabras reservadas SQL:** Siempre en MAYÚSCULAS
- **Nomenclatura de objetos:** Minúsculas en `snake_case`
- **Comentarios internos:** En MAYÚSCULAS para mayor visibilidad
- **Código:** Indentado para facilitar la lectura de constraints y relaciones

---

**Desarrollada por:** Valeria Castillo — Ingeniería en Sistemas
**Año:** 2026
