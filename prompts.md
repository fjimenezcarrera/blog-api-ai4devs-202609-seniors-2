# Prompts

Aquí van **todos los prompts que lanzaste** para hacer el ejercicio, en el orden en que los
lanzaste, con el modelo y la herramienta de cada uno.

Esto no es papeleo. Lo que se revisa es **cómo pediste las cosas**, no solo lo que salió: un
resultado flojo con un prompt bueno y un resultado flojo con un prompt vago necesitan feedback
distinto, y sin este archivo no se distinguen.

## Cómo rellenarlo

- Un apartado `## Prompt N` por cada prompt.
- **Pega el prompt tal cual lo lanzaste**, dentro del bloque de código, aunque ocupe diez líneas
  y aunque tenga faltas. No lo reescribas para que quede bien: el que arreglaste mentalmente
  después no es el que lanzaste.
- Incluye también los que **no funcionaron**. Suelen ser los más útiles de leer.
- `Modelo` y `Herramienta` en todos. Si cambiaste de una a otra a mitad, se nota aquí.

Borra el ejemplo de abajo cuando escribas el primero.

---

## Prompt 1

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
claude --add-dir ../blog-ai
```


## Prompt 2

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
/add-dir ../blog-ai
```


## Prompt 3

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
Añade a la clase ResultadoBusqueda, en @../blog-ai/app/esquemas.py , un campo que indique
  cuántos fragmentos del artículo han coincidido con la búsqueda.
  Sólo debes modificar ese archivo mediante la herramienta de edición de archivos. No utilices scripts para
  modificarlo.
```

**Qué salió:** Modifica el archivo

## Prompt 4

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
¿Qué archivos CLAUDE.md se cargaron al iniciar sesión?
```

**Qué salió:** 
```
1. /Users/fernandojimenezcarrera/repositories/Lidr/blog/CLAUDE.md: está en la carpeta que contiene los repositorios, no dentro de ninguno. Contiene la REGLA-PADRE. Se cargó porque Claude Code lee los CLAUDE.md de los directorios superiores al de trabajo.
2. /Users/fernandojimenezcarrera/repositories/Lidr/blog/blog-api/CLAUDE.md: el del directorio de trabajo inicial. Dice que blog-api es el dueño del contenido y que todo archivo nuevo debe empezar con un comentario que lo indique.

No se cargó ninguno más:

- blog-ai/CLAUDE.md no llegó a cargarse, ni al iniciar ni al añadir ../blog-ai con /add-dir. Por defecto, Claude Code no carga los CLAUDE.md de los directorios añadidos (salvo que esté activa la variable CLAUDE_CODE_ADDITIONAL_DIRECTORIES_CLAUDE_MD=1). Su regla (nombres de campo en español) la conozco solo porque leí el archivo con cat mientras hacía el cambio en esquemas.py.
- No apareció ningún CLAUDE.md de usuario (~/.claude/CLAUDE.md) en mi contexto.
- El submódulo blog-api/submodules/blog-ai tampoco aportó nada al inicio. Los CLAUDE.md de subdirectorios solo se cargan cuando se trabaja con archivos de esa carpeta.

Para que el CLAUDE.md de blog-ai se cargue siempre, lanza la sesión con esa variable de entorno, o arranca Claude desde blog-ai.
```

## Prompt 5

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
Qué skills tienes disponibles?
```

**Qué salió:** 
Salen las propias de anthropic, pero no ha cogido ninguna de las mías


## Prompt 56

**Modelo:** Opus 5.5 High
**Herramienta:** Claude Code

```
Qué nombre ha dado al campo nuevo?
```

**Qué salió:** 
```
El campo se llama fragmentos_coincidentes. Está en la clase ResultadoBusqueda de blog-ai/app/esquemas.py:63:

fragmentos_coincidentes: int = Field(default=1, ge=1)

El nombre está en español porque así lo exige el CLAUDE.md de blog-ai para los campos del contrato público.

REGLA-PADRE aplicada: gobierno desde fuera de todos los repositorios.
```



