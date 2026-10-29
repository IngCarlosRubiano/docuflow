# Changelog

Todos los cambios notables de este proyecto serán documentados en este archivo.

El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/)
y este proyecto adhiere a [Semantic Versioning](https://semver.org/lang/es/).

## [Unreleased]

### Added

- Estructura inicial del repositorio
- Documentación base del proyecto (`docs/`)
- Plantillas de GitHub (PR, Issues, ADR, retrospectivas)
- Configuración de `.gitignore`, `.editorconfig` y `.env.example`
- README completo con descripción y stack del proyecto
- Protección de rama `main` (PR obligatorio, sin push directo)
- GitHub Project con 7 campos personalizados, 9 milestones y 19 etiquetas
- **Bootstrap Spring Boot 4.1.1 con Java 25**
- **Plugins de calidad: Spotless 3.4.0, Checkstyle 3.6.0, SpotBugs 4.9.8.3, JaCoCo 0.8.13**
- **`application.yml` con perfiles `local`, `test`, `demo`**
- **`Dockerfile` multi-stage con usuario no-root y health check**
- **`compose.yaml` con PostgreSQL 18.6 en puerto 5433**
- **Migración Flyway `V1__init.sql` (extensiones `uuid-ossp`, `citext`, `pg_trgm`)**
- **Estructura de paquetes por módulos: `shared`, `identity`, `documents`, `processing`, `audit`**

### Known Limitations

Ver `docs/known-limitations.md` y `docs/technical-debt.md`.

## [0.1.0-alpha] - 2026-10-29

Primera pre-release del proyecto. Bootstrap completo sin lógica de negocio.

### Technical Debt

- **TD-001**: warning cosmético de Spotless sobre `sun.misc.Unsafe` en Java 25
- **TD-002**: JaCoCo con umbral 0% (subir a 70% en Fase 2)
- **TD-003**: `contextLoads` deshabilitado hasta Testcontainers en Fase 2