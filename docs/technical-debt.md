# Technical Debt — DocuFlow

Deuda técnica registrada con motivo, impacto y condición de resolución.

---

## TD-001 — Spotless usa APIs deprecadas de `sun.misc.Unsafe`

- **Tipo:** informativo (warning, no bloquea build)
- **Fecha:** 2026-10-29
- **Descripción:** Spotless 3.4.0 emite warnings al usar `sun.misc.Unsafe::staticFieldBase` en Java 25. Los warnings son cosméticos y el formateo funciona correctamente.
- **Impacto:** Ninguno funcional. Solo ruido en logs.
- **Condición de resolución:** Cuando Spotless 4.x elimine el uso de `sun.misc.Unsafe`.

---

## TD-002 — JaCoCo con umbral 0% durante el bootstrap

- **Tipo:** intencional
- **Fecha:** 2026-10-29
- **Descripción:** El umbral de cobertura se bajó temporalmente de 0.70 a 0.00 porque
  en el bootstrap solo existe el test de contexto (deshabilitado) y no hay lógica
  de negocio que probar. Con el umbral en 0.70 el build falla, obligando a usar
  `-Djacoco.skip=true`, lo cual es frágil y contamina el pipeline.
- **Impacto:** La cobertura no se está midiendo como criterio de calidad durante el bootstrap.
  El plugin JaCoCo sí se ejecuta y genera reporte en `target/site/jacoco/`.
- **Condición de resolución:** Fase 2, cuando existan al menos los primeros tests
  unitarios de las entidades y servicios. Subir a `0.70` en `pom.xml`.
- **Issue relacionado:** #2 (Fase 2)

---

## TD-003 — `contextLoads` deshabilitado hasta Testcontainers

- **Tipo:** intencional
- **Fecha:** 2026-10-29
- **Descripción:** El test `DocuflowApplicationTests.contextLoads()` está `@Disabled`
  porque intenta levantar el contexto Spring completo sin una base de datos disponible.
  En la Fase 2 se reescribe con `@Testcontainers` + PostgreSQL real.
- **Impacto:** Sin validación automática de que el contexto Spring arranca.
  Se valida manualmente ejecutando `docker compose up` + `java -jar`.
- **Condición de resolución:** Fase 2, junto con el modelo de datos.

---

## TD-004 — Spring Security auto-configurado con usuario en memoria

- **Tipo:** intencional
- **Fecha:** 2026-10-29
- **Descripción:** `spring-boot-starter-security` está en el classpath pero no existe
  `SecurityConfig` aún. Spring Security genera un usuario `user` con contraseña
  aleatoria en cada arranque, y emite un warning en los logs.
- **Impacto:** Ninguno funcional para el bootstrap. Los endpoints de actuator y
  los que se creen hasta la Fase 3 estarán protegidos por HTTP Basic por defecto
  (o permitidos según la configuración auto-generada).
- **Condición de resolución:** Fase 3, al crear `SecurityConfig` con reglas
  explícitas para `/auth/**`, `/actuator/health` y el resto de endpoints.
- **Issue relacionado:** #3 (Fase 3)