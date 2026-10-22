# Contribuir a DocuFlow

Este es un proyecto personal de portafolio, pero sigue las convenciones
de un proyecto profesional. Si deseas contribuir, respeta estas reglas.

## Flujo de trabajo

1. Crea un issue describiendo el cambio.
2. Crea una rama desde `main`:
   - `feature/<descripcion>`
   - `fix/<descripcion>`
   - `docs/<descripcion>`
3. Realiza commits siguiendo [Conventional Commits](https://www.conventionalcommits.org/).
4. Abre un Pull Request usando la plantilla.
5. Asegura que el CI pase antes de solicitar merge.

## Convención de commits

- `feat`: nueva funcionalidad
- `fix`: corrección de bug
- `docs`: documentación
- `refactor`: cambio sin alterar comportamiento
- `test`: pruebas
- `chore`: tareas de mantenimiento
- `ci`: cambios en CI/CD
- `perf`: mejoras de rendimiento
- `build`: cambios en el sistema de build

## Estilo de código

- Java: 4 espacios, sin tabulaciones
- YAML/JSON: 2 espacios
- Líneas máximo 120 caracteres
- Nombres descriptivos, sin abreviaturas crípticas

## Pruebas

Toda contribución debe incluir pruebas para el comportamiento nuevo.
