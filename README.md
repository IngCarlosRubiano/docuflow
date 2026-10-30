# DocuFlow

> Plataforma inteligente de gestión documental — API REST backend.

[![Status](https://img.shields.io/badge/status-en%20desarrollo-yellow)](https://github.com/IngCarlosRubiano/docuflow)
[![Java](https://img.shields.io/badge/Java-25%20LTS-orange?logo=openjdk&logoColor=white)](https://adoptium.net/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-4.1.1-6DB33F?logo=springboot&logoColor=white)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18.6-4169E1?logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![PRs](https://img.shields.io/badge/PRs-bienvenidos-brightgreen)](CONTRIBUTING.md)

---

## 📋 Descripción

**DocuFlow** es una API REST para digitalizar, gestionar, buscar, versionar y procesar documentos digitales. Expone una interfaz HTTP para la carga, consulta, descarga y eliminación de documentos, junto con autenticación, autorización por roles, validación de archivos y búsqueda por metadatos.

El proyecto se construye como parte del **ecosistema de portafolio de Carlos Rubiano**, aplicando desde el primer commit prácticas profesionales de ingeniería de software: SOLID, Clean Code, patrones de diseño justificados, pruebas automatizadas en múltiples niveles, seguridad aplicada, CI/CD y despliegue reproducible.

---
## 📑 Índice
- [Objetivos](#-objetivos)
- [Estado del proyecto](#-estado-del-proyecto)
- [Funcionalidades](#-funcionalidades)
- [Stack](#️-stack)
- [Arquitectura](#️-arquitectura)
- [Primeros pasos](#-primeros-pasos)
- [Documentación](#-documentación)
- [Roadmap](#️-roadmap)
---

## 🎯 Objetivos

**Técnicos**
- Construir una API REST escalable con Java 25 LTS y Spring Boot 4.1.1.
- Consolidar persistencia relacional con PostgreSQL, JPA/Hibernate y Flyway.
- Implementar autenticación JWT, autorización RBAC y validación robusta de archivos.
- Aplicar SOLID, Clean Code y patrones (Repository, Strategy, Adapter, Factory, Outbox).
- Desarrollar estrategia completa de pruebas: unitarias, integración, API, seguridad, carga y mutación.
- Automatizar build, análisis estático, cobertura, seguridad y despliegue con CI/CD.

**De aprendizaje**
- Repasar y consolidar fundamentos (Java, OOP, HTTP, SQL, Git).
- Practicar un flujo de trabajo Git profesional (ramas, PR, rebase, releases).
- Documentar decisiones arquitectónicas (ADRs) y operativas (runbooks, retrospectivas).
- Aplicar DDD táctico, arquitectura por capas y evolucionar a hexagonal cuando se justifique.
- Desarrollar criterio de ingeniería: cuándo usar cada herramienta, patrón o abstracción.

**De portafolio**
- Producir evidencia verificable de habilidades backend para procesos de selección.
- Establecer el estándar de calidad técnica para los siguientes proyectos del ecosistema.

---

## 🚦 Estado del proyecto

🚧 **Fase 1 en curso** — Fundamentos y base del proyecto.

| Fase | Descripción | Duración | Estado |
|------|-------------|----------|--------|
| 1 | Fundamentos y base del proyecto | Sem 1 | 🚧 En curso |
| 2 | Diseño y persistencia | Sem 2 | ⏳ Pendiente |
| 3 | Identidad y seguridad | Sem 3 | ⏳ Pendiente |
| 4 | Gestión documental | Sem 4–5 | ⏳ Pendiente |
| 5 | Calidad y cierre del MVP | Sem 6 | ⏳ Pendiente |
| 6 | OCR y búsqueda de contenido | Sem 7–8 | ⏳ Pendiente |
| 7 | Versionamiento y auditoría | Sem 9 | ⏳ Pendiente |
| 8 | Asincronía y almacenamiento externo | Sem 10 | ⏳ Pendiente |
| 9 | Calidad avanzada y observabilidad | Sem 11 | ⏳ Pendiente |
| 10 | Despliegue y cierre | Sem 12 | ⏳ Pendiente |

**Inicio:** 19 de octubre de 2026 · **Release final objetivo:** `v1.0.0` — 8 de enero de 2027.

---

## ✨ Funcionalidades

### ✅ Implementadas

_(Ninguna todavía — el proyecto está en Fase 1: fundamentos, configuración y CI.)_

### 🚧 Planificadas — MVP (Fases 2–5)

- **Identidad**: registro, login, refresh rotativo, logout y gestión de usuarios.
- **Autorización**: RBAC con roles `USER`, `ADMIN` y `AUDITOR`.
- **Documentos**: carga multipart, consulta, descarga y eliminación lógica.
- **Validación**: extensión, MIME declarado, *magic bytes*, tamaño y checksum SHA-256.
- **Búsqueda**: por nombre, tipo, fecha, propietario y estado, con paginación y ordenamiento.
- **Metadatos**: actualización parcial de campos permitidos.
- **Errores**: respuesta uniforme con `ProblemDetail` (RFC 9457) y `correlation-id`.
- **API documentada**: OpenAPI 3.1 + Swagger UI.
- **Reproducibilidad**: Docker Compose con PostgreSQL y migraciones Flyway.
- **Calidad**: CI con build, pruebas, cobertura, análisis estático y escaneo de dependencias.

### 🔮 Planificadas — Intermedio (Fases 6–7)

- **OCR**: extracción de texto con Tesseract + PDFBox detrás de un puerto `TextExtractor`.
- **Clasificación**: reglas/heurísticas mediante patrón `Strategy`.
- **Búsqueda de contenido**: índice `tsvector` con `GIN` y ranking por relevancia.
- **Versionamiento**: historial inmutable y restauración de versiones.
- **Auditoría**: registro *append-only* de operaciones sensibles.

### 🔮 Planificadas — Avanzado (Fases 8–10)

- **Procesamiento asíncrono**: outbox transaccional, workers idempotentes, reintentos con *backoff* y dead-letter.
- **Almacenamiento externo**: adaptador S3/MinIO detrás de `StoragePort`.
- **Caché**: Redis con criterio de activación medible y ADR documentado.
- **Observabilidad**: métricas con Micrometer/Prometheus, logs estructurados, trazas.
- **CI/CD**: pipeline con *quality gates* y despliegue automatizado por *tag*.
- **Demo desplegada**: entorno público con datos sintéticos y runbook de rollback.

---

## 🛠️ Stack

| Área | Tecnología | Versión |
|------|------------|---------|
| Lenguaje | Java (Temurin LTS) | 25.0.4 |
| Framework | Spring Boot | 4.1.1 |
| Web | Spring Web MVC | (BOM) |
| Seguridad | Spring Security + JWT (JOSE) | (BOM) |
| Validación | Jakarta Bean Validation | (BOM) |
| Persistencia | Spring Data JPA / Hibernate | (BOM) |
| Base de datos | PostgreSQL | 18.6 |
| Migraciones | Flyway | 11.x |
| Documentos | Apache Tika + PDFBox | estable |
| OCR | Tesseract (Tess4J) | 5.5.x |
| Build | Maven Wrapper | 3.9.x |
| Testing | JUnit 5, Mockito, AssertJ, Testcontainers | (BOM) |
| Cobertura | JaCoCo + PIT | 0.8.x / 1.x |
| Calidad | Spotless, Checkstyle, SpotBugs | estable |
| CI/CD | GitHub Actions + GHCR | — |
| Contenedores | Docker + Compose v2 | actual |
| API Docs | springdoc-openapi + Swagger UI | 3.1.x |

> Las versiones definitivas viven en el BOM de Spring Boot y en el `pom.xml`. Esta tabla se actualiza si cambian.

---

## 🏗️ Arquitectura

**Monolito modular con arquitectura por capas**, organizada por funcionalidad. Evoluciona a hexagonal cuando el proyecto lo justifique (mínimo dos implementaciones reales por puerto).

```text
┌─────────────────────────────────────────────────┐
│ API / Presentación                              │
│ Controllers · DTOs · Validation · Mappers       │
├─────────────────────────────────────────────────┤
│ Aplicación                                      │
│ Casos de uso · Servicios · Puertos · Tx         │
├─────────────────────────────────────────────────┤
│ Dominio                                         │
│ Entidades · Value Objects · Reglas · Errores    │
├─────────────────────────────────────────────────┤
│ Infraestructura                                 │
│ JPA · Storage · OCR · Jobs · Config             │
└─────────────────────────────────────────────────┘
                        ▲
                        │
      Seguridad · Observabilidad · OpenAPI

```

**Regla de dependencia:** `api → application → domain ← infrastructure`. El dominio no importa Spring, JPA ni Tesseract.

**Decisiones arquitectónicas** registradas en [`docs/adr/`](docs/adr/). Las más relevantes:
- `ADR-001`: arquitectura por capas para el MVP.
- `ADR-002`: evolución a hexagonal con disparador explícito.
- `ADR-004`: JWT stateless con refresh rotativo.
- `ADR-009`: índices y búsqueda de contenido con `tsvector`.

---

## 📂 Estructura del repositorio

```text
docuflow/
├── .github/
│   ├── workflows/             # CI, quality gates, deploy
│   ├── ISSUE_TEMPLATE/        # feature, bug, chore, adr
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── dependabot.yml
├── docs/
│   ├── adr/                   # Decisiones arquitectónicas
│   ├── architecture/          # Diagramas C4 y overview
│   ├── api/                   # OpenAPI + colección Bruno
│   ├── testing/               # Estrategia de pruebas
│   ├── solid/                 # Evidencia SOLID aplicada
│   ├── security/              # Modelo de seguridad
│   ├── deployment/            # Entornos y despliegue
│   ├── operations/            # Backup, restore, runbook
│   ├── runbook/               # Incidentes y soluciones
│   ├── retrospectives/        # Retrospectivas por fase
│   ├── learning-log.md
│   ├── incident-log.md
│   ├── known-limitations.md
│   ├── technical-debt.md
│   └── glossary.md
├── src/
│   ├── main/
│   │   ├── java/com/ingcarlosrubiano/docuflow/
│   │   └── resources/         # application*.yml · db/migration
│   └── test/
│       ├── java/
│       └── resources/         # documentos sintéticos
├── bruno/                     # Colección de API versionada
├── docker/                    # Dockerfile y configuraciones
├── k6/                        # Scripts de prueba de carga
├── scripts/                   # Utilidades locales
├── .editorconfig
├── .env.example
├── .gitignore
├── CHANGELOG.md
├── CONTRIBUTING.md
├── LICENSE
├── README.md
├── SECURITY.md
└── pom.xml

```

---

## 🚀 Primeros pasos

### Requisitos previos

| Herramienta | Versión mínima |
|-------------|----------------|
| JDK | 25 (Temurin o Corretto) |
| Docker Desktop | 24+ |
| Docker Compose | v2 |
| Git | 2.40+ |
| GitHub CLI (opcional) | 2.40+ |

**No necesitas instalar Maven ni PostgreSQL localmente**: el proyecto usa el Wrapper de Maven y PostgreSQL corre en Docker.

### Instalación

```bash
git clone https://github.com/IngCarlosRubiano/docuflow.git
cd docuflow
cp .env.example .env
# Edita .env si lo necesitas (por defecto funciona en local)
./mvnw verify
```
### Configuración

El proyecto usa variables de entorno documentadas en `.env.example`. Copia el archivo y ajusta los valores según tu entorno:

```bash
cp .env.example .env
```
⚠️ Nunca commitees el archivo `.env`. El `.gitignore` lo excluye.

**Variables principales:**

| Variable | Descripción | Valor por defecto |
|----------|-------------|-------------------|
| `DB_HOST` | Host de PostgreSQL | `localhost` |
| `DB_PORT` | Puerto de PostgreSQL | `5433` |
| `DB_NAME` | Nombre de la base de datos | `docuflow` |
| `DB_USERNAME` | Usuario de la base de datos | `docuflow` |
| `DB_PASSWORD` | Contraseña de la base de datos | *(cambiar)* |
| `JWT_SIGNING_KEY` | Clave de firma JWT (256+ bits) | *(cambiar)* |
| `STORAGE_TYPE` | Tipo de almacenamiento | `local` |
| `MAX_FILE_SIZE` | Tamaño máximo de archivo | `20MB` |
| `SPRING_PROFILES_ACTIVE` | Perfil de Spring | `local` |

### Ejecución

Con Docker Compose (recomendado):

```bash
docker compose up -d
```
Esto levanta PostgreSQL en `localhost:5433` y la aplicación en `localhost:8080`.

Desarrollo local (sin contenedor de la app):

```bash
# Solo PostgreSQL
docker compose up -d postgres

# Aplicación en primer plano
./mvnw spring-boot:run
```
La API queda disponible en `http://localhost:8080`.

Health check:

```bash
curl http://localhost:8080/actuator/health
```
### 🧪 Pruebas

```bash
# Todas las pruebas
./mvnw test

# Pruebas de integración (requiere Docker)
./mvnw verify

# Un test específico
./mvnw test -Dtest=NombreDelTest

# Cobertura con JaCoCo
./mvnw jacoco:report
```
*Reporte en: `target/site/jacoco/index.html`*
La estrategia completa de pruebas está documentada en `docs/testing/`.

### 📚 Documentación

| Documento | Descripción |
|-----------|-------------|
| **Arquitectura** | Diagramas C4, overview y decisiones de diseño |
| **ADRs** | Registro de decisiones arquitectónicas |
| **Testing** | Estrategia de pruebas por nivel |
| **SOLID** | Evidencia de aplicación de principios SOLID |
| **Seguridad** | Modelo de seguridad y controles |
| **Despliegue** | Entornos, despliegue y rollback |
| **Operaciones** | Backup, restore y runbook |
| **Glosario** | Términos técnicos del proyecto |
| **CHANGELOG** | Historial de cambios |

**OpenAPI / Swagger UI** (disponible al correr la aplicación):
* **UI interactiva:** `http://localhost:8080/swagger-ui/index.html`
* **Especificación JSON:** `http://localhost:8080/v3/api-docs`

## 🗺️ Roadmap

| Release | Fecha objetivo | Contenido |
|---------|----------------|-----------|
| `v0.1.0` | 1 nov 2026 | Esqueleto, migraciones, CI, ADR-001/015 |
| `v0.2.0` | 8 nov 2026 | Autenticación completa |
| `v0.3.0` | 22 nov 2026 | Búsqueda, contrato OpenAPI completo |
| `v0.4.0` | 29 nov 2026 | MVP funcional completo |
| `v0.5.0` | 13 dic 2026 | OCR, clasificación y búsqueda de contenido |
| `v0.6.0` | 20 dic 2026 | Versionamiento y auditoría |
| `v0.7.0` | 27 dic 2026 | Asincronía, outbox y almacenamiento externo |
| `v0.9.0-rc.1` | 1 ene 2027 | Candidata a release: calidad y observabilidad |
| `v1.0.0` | 8 ene 2027 | Release final con demo desplegada |

Los milestones están disponibles en la sección Releases y Milestones.

## 🤝 Contribuciones
Este es un proyecto personal de portafolio, pero se mantiene con estándares profesionales. Si quieres contribuir, por favor lee `CONTRIBUTING.md` antes de enviar un Pull Request.

Toda contribución debe:
* Respetar Conventional Commits.
* Incluir pruebas para el comportamiento nuevo.
* Pasar el CI sin errores.
* Actualizar la documentación si cambia una decisión o contrato.

## 🔒 Seguridad
Para reportar una vulnerabilidad, no abras un issue público. Sigue el procedimiento en `SECURITY.md`.

El modelo de seguridad (autenticación, autorización, validación de archivos, controles) está documentado en `docs/security/`.

## 📄 Licencia
Este proyecto está bajo la licencia MIT. Ver `LICENSE` para más detalles.

## 👤 Autor
**Carlos Rubiano** — Ingeniero de Software · Backend · Java · Spring Boot · TypeScript · Python

* 💼 [LinkedIn](https://www.linkedin.com/in/carlos-rubiano-engineer/)
* 🐙 [GitHub](https://github.com/IngCarlosRubiano)
* 🌐 [Portafolio](https://ingcarlosrubiano.github.io/)

*Formación: Ingeniería Telemática — visión integral que combina software, redes y sistemas.*

## 🙏 Agradecimientos
Este proyecto forma parte de un ecosistema de aprendizaje progresivo orientado a construir un perfil backend profesional. La documentación pública, las comunidades de Spring y PostgreSQL, y la disciplina de la ingeniería de software aplicada han sido la base metodológica de cada decisión.

> *"Aprender ingeniería de software construyendo software."*