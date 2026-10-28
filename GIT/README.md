# 💻 ERROR-404
<p align="center">
  <b>Cohorte 2026</b><br>
  Apuntes y comandos de Git & GitHub
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Git-Control%20de%20Versiones-orange?logo=git">
  <img src="https://img.shields.io/badge/GitHub-Repositorios-black?logo=github">
  <img src="https://img.shields.io/badge/Cohorte-2026-blue">
  <img src="https://img.shields.io/badge/Estado-En%20progreso-yellow">
</p>

---

## 📚 Índice

- [Clase 1 — Uso de GitHub](#-clase-1--uso-de-github)
- [Clase 2 — Clave SSH](#-clase-2--clave-ssh)
- [Clase 3 — Git y GitHub](#-clase-3--git-y-github)
- [Clase 4 — Tu primer Push](#-clase-4--tu-primer-push)
- [Clase 5 — Git Tag y Versiones](#-clase-5--git-tag-y-versiones)
- [Clase 6 — Error con Tags](#-clase-6--error-con-tags)
- [Clase 7 — README grupal](#-clase-7--readme-grupal)
- [Clase 8 — Manejo de Ramas](#-clase-8--manejo-de-ramas-en-github)
- [Clase 9 — Múltiples colaboradores](#-clase-9--múltiples-colaboradores-en-github)
- [Clase 10 — Flujo de Trabajo Profesional](#-clase-10--flujo-de-trabajo-profesional)
- [Clase 11 — Archivos Binarios](#-clase-11--flujo-de-trabajo-profesional-archivos-binarios)
- [Clase 12 — Cierre del semestre](#-clase-12--cierre-del-semestre)
- [Comandos rápidos](#-comandos-rápidos)


---

# 📘 Clase 1 — Uso de GitHub

## 🐙 ¿Qué es GitHub?
**GitHub** es una plataforma que nos permite almacenar repositorios de **Git** y utilizarlos como servidores remotos.

Además, permite realizar distintas acciones de forma visual e interactiva, sin necesidad de utilizar siempre la consola de comandos.

Desde GitHub podemos:

* 📁 Crear e importar repositorios.

* 👥 Crear organizaciones.

* 📊 Crear proyectos.

* 🔎 Descubrir repositorios de otras personas.

* 🤝 Contribuir a proyectos.

* ⭐ Dar estrellas a repositorios.

* 🌎 Compartir nuestros proyectos.

---

## 🛠️ Opciones principales de GitHub
| Opción                | Descripción                                              |
| --------------------- | -------------------------------------------------------- |
| **Import repository** | Importar un repositorio existente                        |
| **New repository**    | Crear un nuevo repositorio                               |
| **New organization**  | Crear una organización para agrupar proyectos y personas |
| **New project**       | Crear un espacio para organizar tareas y proyectos       |
| **New gist**          | Compartir pequeños fragmentos de código                  |

---

## 📦 Crear un repositorio
Para crear un repositorio seleccionamos:

> **New repository**

Luego colocamos un nombre, por ejemplo:

```text

Prueba-Inicio-Repo

```

También podemos agregar:

* 📝 Una descripción.

* 🔒 Configuración pública o privada.

* 📄 Un archivo README.

* ⚖️ Una licencia.

* 🚫 Un archivo `.gitignore`.

Finalmente:

> **Create repository**

---

## 📄 README.md
El archivo `README.md` es el documento que GitHub muestra por defecto cuando ingresamos a un repositorio.

Es una buena práctica utilizarlo para explicar:

* 📌 De qué trata el proyecto.

* 🛠️ Qué herramientas utiliza.

* 📋 Qué requisitos tiene.

* ▶️ Cómo ejecutarlo.

* 🤝 Cómo contribuir.

* 👨‍💻 Quiénes participan.

> [!TIP]

> El README funciona como la **presentación principal del proyecto**.

---

## 📥 Clonar un repositorio
Para descargar un repositorio remoto en nuestra computadora utilizamos:

```bash

git clone URL_DEL_REPOSITORIO

```

Por ejemplo, utilizando SSH:

```bash

git clone git@github.com:CodeFire2026/Repo-UmbrellaCoders.git

```

Esto descargará en nuestra computadora una copia del proyecto almacenado en GitHub.

---

## 🔐 HTTPS y SSH
GitHub permite conectarse principalmente mediante:

| Método | Ejemplo                                      |
| ------ | -------------------------------------------- |
| HTTPS  | `https://github.com/usuario/repositorio.git` |
| SSH    | `git@github.com:usuario/repositorio.git`     |

Actualmente, GitHub no utiliza la contraseña normal de la cuenta para autenticar operaciones Git mediante HTTPS.

Para HTTPS pueden utilizarse métodos como tokens de acceso personal, mientras que SSH utiliza un sistema de claves públicas y privadas.

---

## 🔗 Conectar un repositorio de GitHub con nuestra computadora
Una forma sencilla de trabajar es crear primero el repositorio en GitHub y luego clonarlo en nuestra computadora.

### 1️⃣ Crear el repositorio en GitHub
Creamos primero nuestro repositorio desde la página de GitHub.

### 2️⃣ Copiar el enlace SSH
Ejemplo:

```text

git@github.com:CodeFire2026/Repo-UmbrellaCoders.git

```

### 3️⃣ Abrir Git Bash
Nos ubicamos en la carpeta donde queremos guardar nuestros proyectos.

```bash

cd Documents

```

Creamos una carpeta:

```bash

mkdir Proyectos

```

Entramos:

```bash

cd Proyectos

```

### 4️⃣ Clonar el repositorio
```bash

git clone git@github.com:CodeFire2026/Repo-UmbrellaCoders.git

```

Entramos al repositorio:

```bash

cd Repo-UmbrellaCoders

```

---

## 🔄 Actualizar el repositorio
```bash

git pull origin main

```

También podemos consultar la información del servidor remoto:

```bash

git fetch

```

Ver las ramas:

```bash

git branch

```

---

## 📝 Crear un README desde Git Bash
```bash

touch README.md

```

Luego podemos comprobar el estado:

```bash

git status

```

Agregar los archivos:

```bash

git add .

```

Crear el commit:

```bash

git commit -m "Creamos el README"

```

Ver el historial:

```bash

git log

```

Y finalmente subir los cambios:

```bash

git push origin main

```

---

# 🔑 Clase 2 — Clave SSH

## 🔐 ¿Qué es una clave SSH?
Las claves SSH permiten conectarnos de manera segura entre nuestra computadora y GitHub.

Generalmente trabajan con dos archivos:

```text

Clave privada

Clave pública (.pub)

```

> [!CAUTION]

> La **clave privada nunca debe compartirse**.

---

## 📤 Cargar una clave SSH pública en GitHub
> [!NOTE]

> Si ya realizaste este proceso anteriormente en el mismo equipo, normalmente no es necesario repetirlo.

### 1️⃣ Buscar la clave pública
Ingresamos a la carpeta:

```text

.ssh

```

Buscamos un archivo terminado en:

```text

.pub

```

Por ejemplo:

```text

id_ed25519.pub

```

Abrimos el archivo y copiamos todo su contenido.

---

### 2️⃣ Agregarla en GitHub
En GitHub ingresamos a:

```text

Settings

   ↓

SSH and GPG keys

   ↓

New SSH key

```

Colocamos un nombre para identificar nuestro dispositivo y pegamos nuestra clave pública.

> 💡 Es recomendable utilizar como nombre de la clave el nombre de la computadora desde la cual estamos trabajando.

Por ejemplo:

```text

Notebook-Esteban

```

Cada computadora puede tener su propia clave SSH.

---

## 🌿 Comandos de Git
### Ver las ramas
```bash

git branch

```

### Cambiar a una rama
```bash

git checkout master

```

Actualmente también podemos utilizar:

```bash

git switch main

```

### Cambiar el nombre de `master` a `main`
```bash

git branch -M main

```

### Conectar un repositorio remoto
```bash

git remote add origin git@github.com:nombreUsuario/class-git.git

```

### Ver los repositorios remotos configurados
```bash

git remote -v

```

### Fusionar una rama
```bash

git merge segunda

```

Esto incorpora los cambios de la rama `segunda` en la rama donde estamos posicionados.

---

## 💾 Commit y Push
Crear un commit de archivos ya rastreados:

```bash

git commit -am "Uso de GitHub parte 20"

```

Subir los cambios:

```bash

git push origin main

```

> [!IMPORTANT]

> `git commit -am` solamente agrega automáticamente archivos que Git ya estaba siguiendo. Los archivos nuevos necesitan primero un `git add`.

---

## 🌳 ¿Qué pasa si tenemos `master` y `main`?
Puede ocurrir que existan ambas ramas:

```text

master

main

```

Si queremos utilizar `main` como rama principal:

1. Entramos al repositorio en GitHub.

2. Vamos a **Settings**.

3. Buscamos la configuración de **Branches**.

4. Establecemos `main` como rama principal.

5. Verificamos que todo funcione correctamente.

6. Luego podemos eliminar `master` si ya no es necesaria.

---

# 📗 Clase 3 — Git y GitHub

## 🌿 De `master` a `main`
Históricamente, muchos repositorios Git utilizaban:

```text

master

```

como nombre para la rama principal.

GitHub comenzó a utilizar:

```text

main

```

como nombre predeterminado para los nuevos repositorios.

Por eso, dependiendo de cómo fue creado nuestro repositorio y de nuestra configuración de Git, podemos encontrarnos con cualquiera de los dos nombres.

---

## ❓ ¿Cuándo podemos encontrar `master` o `main`?
### Repositorio creado localmente
Al ejecutar:

```bash

git init

```

el nombre inicial dependerá de la configuración de nuestra instalación de Git.

Podemos cambiarlo manualmente:

```bash

git branch -M main

```

---

### Configurar `main` como rama predeterminada
Podemos indicarle a Git que los nuevos repositorios utilicen `main`:

```bash

git config --global init.defaultBranch main

```

A partir de ese momento, al utilizar:

```bash

git init

```

Git utilizará:

```text

main

```

como rama inicial.

---

## 📊 Gitk
Podemos visualizar gráficamente el historial de nuestro repositorio mediante:

```bash

gitk

```

Gitk permite observar:

* 🌿 Ramas.

* 🔀 Fusiones.

* 💾 Commits.

* 🏷️ Tags.

* 📜 Historial del repositorio.

---

## 🐧 Instalar Gitk en Linux
```bash

sudo apt-get update

sudo apt-get install gitk

```

Luego:

```bash

gitk

```

---

## 🔄 Actualizar un repositorio local
Cuando trabajamos en equipo o utilizamos diferentes computadoras debemos mantener nuestro repositorio local actualizado.

Esto permite:

* Evitar conflictos.

* Trabajar con la última versión.

* Obtener cambios realizados por otras personas.

* Mantener nuestras ramas sincronizadas.

### Flujo de trabajo
```bash

cd repositorio

git checkout main

git pull origin main

```

Otras ramas:

```bash

git checkout second

git pull origin second

```

```bash

git checkout trabajo

git pull origin trabajo

```

---

## 🔀 Fetch + Merge
Primero descargamos las referencias remotas:

```bash

git fetch

```

Luego podemos integrarlas:

```bash

git checkout main

git merge origin/main

```

---

## 🧠 Diferencia rápida
| Comando     | Función                                                    |
| ----------- | ---------------------------------------------------------- |
| `git fetch` | Descarga información del repositorio remoto sin fusionarla |
| `git pull`  | Descarga cambios y trata de integrarlos                    |
| `git merge` | Fusiona ramas                                              |
| `git push`  | Envía nuestros commits al repositorio remoto               |

---

# 🚀 Clase 4 — Tu primer Push

## 🔐 SSH y GitHub
La creación de las claves SSH es necesaria normalmente **una sola vez por cada computadora**.

Luego de crear nuestras llaves SSH podemos entregarle a GitHub nuestra **llave pública** para comunicarnos de forma segura y sin tener que autenticarnos manualmente en cada operación.

> [!IMPORTANT]

> La llave que debemos compartir con GitHub es únicamente la **llave pública**.

---

## 🔑 Agregar la clave SSH a GitHub
Para hacerlo debemos ingresar en:

```text

GitHub

   ↓

Settings

   ↓

SSH and GPG keys

   ↓

New SSH key

```

Luego:

1. Colocamos un nombre para identificar la computadora.

2. Pegamos el contenido de nuestra llave pública.

3. Guardamos la nueva llave SSH.

---

## 🔄 Cambiar el remoto de HTTPS a SSH
Si nuestro repositorio ya estaba conectado mediante HTTPS, podemos cambiar la URL remota utilizando:

```bash

git remote set-url origin URL_SSH_DEL_REPOSITORIO

```

Por ejemplo:

```bash

git remote set-url origin git@github.com:usuario/repositorio.git

```

Podemos comprobar el cambio con:

```bash

git remote -v

```

---

## 📋 Copiar la llave SSH pública
### 🍎 macOS
```bash

pbcopy < ~/.ssh/id_rsa.pub

```

### 🪟 Windows — Git Bash
```bash

clip < ~/.ssh/id_rsa.pub

```

### 🐧 Linux — Ubuntu
```bash

cat ~/.ssh/id_rsa.pub

```

> [!NOTE]

> Si la clave fue creada utilizando Ed25519, el archivo podría llamarse:

>

> ```text

> id_ed25519.pub

> ```

En ese caso, por ejemplo:

```bash

cat ~/.ssh/id_ed25519.pub

```

---

## 📤 Antes de hacer Push
Cuando trabajamos en equipo es recomendable comprobar que nuestro repositorio local esté actualizado antes de subir nuestros cambios.

Un flujo posible sería:

```bash

git fetch

git pull origin main

git push origin main

```

> [!WARNING]

> Si otra persona modificó los mismos archivos o líneas, pueden aparecer conflictos que tendremos que resolver manualmente.

---

## 👥 Invitar a un colaborador
Para invitar a otra persona a trabajar en nuestro repositorio debemos ingresar en GitHub y buscar la configuración de colaboradores.

Un recorrido habitual es:

```text

Repository

   ↓

Settings

   ↓

Collaborators

   ↓

Add people

```

GitHub puede solicitar nuevamente nuestra contraseña o un método de autenticación de dos factores.

Luego:

1. Buscamos el nombre de usuario.

2. Enviamos la invitación.

3. El usuario invitado acepta.

4. Una vez aceptada la invitación podrá colaborar según los permisos asignados.

---

## 🔄 Primer flujo completo de Push
```bash

git status

git add .

git commit -m "Primer cambio"

git pull origin main

git push origin main

```

Visualmente:

```text

Modificar archivos

      ↓

  git status

      ↓

   git add .

      ↓

  git commit

      ↓

   git pull

      ↓

   git push

      ↓

    GitHub

```

---

# 🏷️ Clase 5 — Git Tag y Versiones

## 📌 ¿Qué son los Git Tags?
En Git, las etiquetas o **tags** permiten marcar commits importantes dentro del historial de un proyecto.

Se utilizan frecuentemente para identificar versiones como:

```text

v1.0

v1.1

v2.0

```

Son especialmente útiles para marcar lanzamientos o versiones estables.

---

## 🔎 Listar etiquetas
Para mostrar todas las etiquetas existentes:

```bash

git tag

```

Ejemplo:

```text

v1.0

v1.1

v1.2

```

También podemos filtrar etiquetas:

```bash

git tag -l "v1.*"

```

---

## 🏷️ Crear una etiqueta
Una etiqueta simple puede crearse con:

```bash

git tag v1.0

```

Esto crea una etiqueta apuntando al commit actual.

---

## 📝 Etiquetas anotadas
También podemos crear una etiqueta anotada:

```bash

git tag -a v1.0 -m "Versión 1.0"

```

Las etiquetas anotadas pueden almacenar información adicional como:

* 👤 Autor.

* 📧 Correo electrónico.

* 📅 Fecha.

* 💬 Mensaje de la etiqueta.

Son especialmente útiles para versiones o publicaciones importantes.

---

## 🪶 Etiquetas ligeras
Una etiqueta ligera funciona como un marcador sencillo sobre un commit.

```bash

git tag v1.0

```

No contiene información adicional como un mensaje de etiqueta.

---

## 📤 Compartir etiquetas
Los tags no siempre se envían automáticamente al utilizar `git push`.

Para subir una etiqueta específica:

```bash

git push origin v1.0

```

Para subir todas las etiquetas:

```bash

git push origin --tags

```

---

## 🗑️ Eliminar etiquetas
Para eliminar una etiqueta local:

```bash

git tag -d v1.0

```

Si también queremos eliminarla del repositorio remoto:

```bash

git push origin --delete v1.0

```

---

## 🔢 Versionado
Una forma común de nombrar versiones es:

```text

v1.0.0

```

Podemos interpretarlo como:

```text

MAJOR.MINOR.PATCH

```

Ejemplo:

```text

v2.4.1

```

| Número | Significado aproximado |
| ------ | ---------------------- |
| `2`    | Versión principal      |
| `4`    | Nuevas funcionalidades |
| `1`    | Correcciones o ajustes |

---

## 🧠 Resumen de Tags
| Acción              | Comando                            |
| ------------------- | ---------------------------------- |
| Ver tags            | `git tag`                          |
| Crear tag           | `git tag v1.0`                     |
| Crear tag anotado   | `git tag -a v1.0 -m "Versión 1.0"` |
| Eliminar tag local  | `git tag -d v1.0`                  |
| Subir un tag        | `git push origin v1.0`             |
| Subir todos         | `git push origin --tags`           |
| Eliminar tag remoto | `git push origin --delete v1.0`    |

> [!TIP]

> Los tags permiten capturar puntos importantes del historial del proyecto y asociarlos a una versión determinada.

---

# ⚠️ Clase 6 — Error con Tags

## ❌ ¿Qué pasa si utilizamos el mismo nombre dos veces?
Los tags deben tener nombres únicos dentro del repositorio.

Por ejemplo, si ya existe:

```bash

git tag v1.0

```

y volvemos a ejecutar:

```bash

git tag v1.0

```

Git mostrará un error porque la etiqueta ya existe.

---

## 🔎 Comprobar los tags existentes
```bash

git tag

```

---

## 🛠️ Solución
Si creamos un tag incorrectamente podemos eliminarlo:

```bash

git tag -d v1.0

```

Luego podemos volver a crearlo apuntando al commit correcto.

Por ejemplo:

```bash

git tag v1.0

```

Si el tag ya había sido enviado a GitHub debemos eliminar también la versión remota:

```bash

git push origin --delete v1.0

```

Después podemos volver a subirlo:

```bash

git push origin v1.0

```

---

## 🔄 Flujo para corregir un Tag
```text

Tag incorrecto

      ↓

git tag -d v1.0

      ↓

Crear tag correcto

      ↓

git tag v1.0

      ↓

git push origin v1.0

```

---

# 📖 Clase 7 — README grupal

## 📝 Documentación del curso
Git y GitHub cuentan con una gran cantidad de comandos.

Durante las clases hemos ido aprendiendo distintos comandos relacionados con:

* 📂 Repositorios.

* 🌿 Ramas.

* 🔀 Merge.

* ☁️ Repositorios remotos.

* 🔑 SSH.

* 📤 Push.

* 📥 Pull.

* 🏷️ Tags.

* 📄 README.

Como actividad grupal debemos mantener un archivo:

```text

README.md

```

con todas las clases y comandos vistos durante el curso.

Este archivo puede encontrarse dentro del directorio:

```text

class-git

```

o dentro de otro directorio elegido por el grupo.

---

## 🎯 Objetivo
El objetivo es mantener la documentación de las clases utilizando **Markdown**.

El README debe contener los contenidos vistos en las clases y mantenerse actualizado a medida que aprendemos nuevos comandos.

> [!IMPORTANT]

> La documentación también forma parte del trabajo profesional con Git y GitHub.

---

## 📁 Ejemplo de estructura
```text

repositorio/

│

├── class-git/

│   └── README.md

│

├── ejercicios/

│

└── proyectos/

```

---

# 🌿 Clase 8 — Manejo de Ramas en GitHub

## 📊 Recordatorio: Gitk
Es bueno recordar el uso de **Gitk**.

Esta herramienta es muy útil para visualizar gráficamente nuestro trabajo con Git y comprender mejor:

- 🌿 Las ramas.

- 🔀 Los merge.

- 💾 Los commits.

- 🏷️ Los tags.

- 📜 El historial del repositorio.

- 🔄 El flujo de trabajo.

Podemos ejecutarlo con:

```bash

gitk

```

> [!NOTE]

> Si el comando `gitk` no funciona, es posible que la herramienta no esté instalada en nuestro sistema.

---

## 🐧 Instalar Gitk en Linux
Primero actualizamos los repositorios:

```bash

sudo apt-get update

```

Luego instalamos Gitk:

```bash

sudo apt-get install gitk

```

Finalmente podemos ejecutarlo:

```bash

gitk

```

---

## 🧠 Repaso: ¿Qué es Git?
**Git** es un sistema de control de versiones que permite registrar y administrar los cambios realizados sobre los archivos de un proyecto.

Una de sus características más importantes es la posibilidad de trabajar utilizando **ramas**.

---

## 🌳 ¿Qué son las ramas?
Las ramas nos permiten realizar cambios en nuestros archivos **sin modificar directamente la versión principal del proyecto**.

Generalmente la rama principal se llama:

```text

main

```

Podemos crear otras ramas para:

- 🧪 Probar nuevas funcionalidades.

- 🐛 Corregir errores.

- 🚧 Trabajar en nuevas características.

- 👥 Dividir el trabajo entre integrantes.

- 🔒 Mantener estable la rama principal.

Por ejemplo:

```text

                ┌── feature-login

                │

main ──●──●──●──┤

                │

                └── nueva-funcion

```

---

## 💡 ¿Por qué utilizar ramas?
Supongamos que tenemos:

```text

main

```

y creamos otra rama llamada:

```text

desarrollo

```

Podemos modificar archivos en `desarrollo` sin afectar inmediatamente a `main`.

```text

main

 │

 ●────●────●

           \\

            ●────●────●

               desarrollo

```

Esto nos permite experimentar y trabajar sin poner en riesgo la versión principal del proyecto.

---

## 💾 Cambios y commits dentro de una rama
Si estamos posicionados en una rama y realizamos modificaciones:

```bash

git add .

git commit -m "Cambios en nueva rama"

```

los cambios quedarán registrados en **esa rama**.

Por ejemplo:

```text

main

 │

 ●────●────●

           \\

            ●────●

             ramaNueva

```

Si posteriormente volvemos a `main`, los commits exclusivos de `ramaNueva` no formarán parte de `main` hasta que integremos ambas ramas.

---

## 🔄 Cambiar entre ramas
Podemos cambiar de una rama a otra utilizando:

```bash

git checkout nombreRama

```

Por ejemplo:

```bash

git checkout main

```

O:

```bash

git checkout desarrollo

```

Una alternativa moderna es:

```bash

git switch desarrollo

```

> [!TIP]

> Al cambiar de rama, Git actualiza los archivos del proyecto para mostrar la versión correspondiente a esa rama.

---

## 🛠️ Comandos para manejar ramas
## 🌱 Crear una rama
```bash

git branch nombreRama

```

Ejemplo:

```bash

git branch desarrollo

```

---

## 🌱 Crear una rama y cambiar a ella
Podemos hacerlo directamente con:

```bash

git checkout -b nombreRama

```

Ejemplo:

```bash

git checkout -b desarrollo

```

También podemos utilizar:

```bash

git switch -c desarrollo

```

---

## 🔄 Cambiar de rama
```bash

git checkout nombreRama

```

Por ejemplo:

```bash

git checkout desarrollo

```

O utilizando `switch`:

```bash

git switch desarrollo

```

---

## 👀 Ver las ramas
Para ver las ramas locales:

```bash

git branch

```

Ejemplo:

```text

* main

  desarrollo

  testing

```

El símbolo:

```text

*

```

indica la rama en la que estamos actualmente.

---

## ☁️ Publicar una rama en GitHub
Una rama creada localmente no necesariamente existe en GitHub.

Para publicarla:

```bash

git push origin nombreRama

```

Por ejemplo:

```bash

git push origin desarrollo

```

Después de esto tendremos la rama tanto en nuestro equipo como en GitHub.

```text

LOCAL                    GITHUB

main       ───────────→  main

desarrollo ───────────→  desarrollo

```

---

## 🔀 Merge de ramas
Cuando terminamos el trabajo realizado en una rama podemos integrarlo en otra utilizando:

```bash

git merge nombreRama

```

Por ejemplo, si queremos integrar `desarrollo` dentro de `main`:

### 1️⃣ Cambiamos a `main`
```bash

git checkout main

```

### 2️⃣ Actualizamos la rama
```bash

git pull origin main

```

### 3️⃣ Realizamos el merge
```bash

git merge desarrollo

```

### 4️⃣ Subimos los cambios
```bash

git push origin main

```

---

## 🔄 Flujo visual de un Merge
Antes:

```text

main

 │

 ●────●────●

           \\

            ●────●────●

                desarrollo

```

Después del merge:

```text

main

 │

 ●────●────●──────────●

           \          /

            ●────●───●

              desarrollo

```

---

## ⚡ Comandos principales de ramas
| Acción | Comando |
|---|---|
| Ver ramas | `git branch` |
| Crear rama | `git branch nombreRama` |
| Crear y cambiar | `git checkout -b nombreRama` |
| Crear y cambiar con Switch | `git switch -c nombreRama` |
| Cambiar de rama | `git checkout nombreRama` |
| Cambiar con Switch | `git switch nombreRama` |
| Publicar rama | `git push origin nombreRama` |
| Fusionar rama | `git merge nombreRama` |
| Ver historial gráfico | `gitk` |

---

## 🚀 Ejemplo de flujo completo
Creamos una rama:

```bash

git checkout -b nueva-funcion

```

Realizamos modificaciones y comprobamos:

```bash

git status

```

Agregamos los archivos:

```bash

git add .

```

Creamos el commit:

```bash

git commit -m "Agrego nueva funcionalidad"

```

Publicamos la rama:

```bash

git push origin nueva-funcion

```

Volvemos a `main`:

```bash

git checkout main

```

Actualizamos:

```bash

git pull origin main

```

Fusionamos:

```bash

git merge nueva-funcion

```

Finalmente:

```bash

git push origin main

```

---

## 🧠 Regla fácil para recordar
```text

git branch          → Veo o creo ramas

git checkout        → Cambio de rama

git checkout -b     → Creo y cambio de rama

git switch          → Cambio de rama

git switch -c       → Creo y cambio de rama

git merge           → Uno dos ramas

git push origin     → Publico una rama en GitHub

gitk                → Veo gráficamente el historial

```

---

<details>

<summary><b>🌿 Ver comandos esenciales de ramas</b></summary>

<br>

```bash

git branch

git branch desarrollo

git checkout desarrollo

git checkout -b nueva-rama

git switch desarrollo

git switch -c nueva-rama

git push origin desarrollo

git merge desarrollo

gitk

```

</details>

---

# 👥 Clase 9 — Múltiples colaboradores en GitHub
> 📅 **Miércoles 7 de octubre de 2026**

## 🤝 Configurar colaboradores en un repositorio
Cuando un repositorio es **público**, cualquier persona puede visualizarlo y clonarlo.

Por ejemplo:

```bash

git clone URL_DEL_REPOSITORIO

```

Sin embargo, poder descargar un proyecto **no significa tener permisos para modificar directamente el repositorio remoto**.

Una persona externa puede:

- 👀 Ver el repositorio público.

- 📥 Clonarlo.

- 💻 Modificar su copia local.

- 🍴 Crear un fork.

- 📤 Proponer cambios mediante un Pull Request.

Pero para realizar `push` directamente al repositorio original necesita los permisos correspondientes.

---

## 🔒 Repositorios privados
En un repositorio privado la situación es diferente.

Una persona que no tenga acceso:

- ❌ No puede visualizar el contenido.

- ❌ No puede clonarlo.

- ❌ No puede realizar `push`.

Para trabajar con el proyecto deberá ser invitada por el propietario u organización.

---

## ➕ Agregar un colaborador
Para permitir que otra persona participe directamente en nuestro proyecto debemos ingresar a la configuración del repositorio.

El recorrido general es:

```text

Repositorio

   ↓

Settings

   ↓

Collaborators / Access

   ↓

Add people

```

Luego podemos buscar al colaborador mediante:

```text

Username de GitHub

```

o, cuando corresponda:

```text

Correo electrónico

```

GitHub enviará una invitación al usuario.

---

## 📩 Proceso de invitación
```text

Dueño del repositorio

        ↓

Envía invitación

        ↓

GitHub notifica al usuario

        ↓

Colaborador acepta

        ↓

Obtiene los permisos asignados

```

> [!IMPORTANT]

> La persona invitada debe **aceptar la invitación** antes de poder trabajar con los permisos otorgados.

---

## 🚀 Comienzo del colaborador
Cuando una persona entra a trabajar en un proyecto existente **no debe crear un repositorio nuevo con `git init`**.

El repositorio ya existe.

Lo correcto es **clonarlo**.

---

## 📁 Crear una carpeta de trabajo
Por ejemplo:

```bash

cd Documents

```

Creamos una carpeta:

```bash

mkdir class-git

```

Podemos comprobar su contenido:

```bash

ls -al

```

---

## ❌ No utilizar `git init`
Si el proyecto ya existe en GitHub:

```bash

git init

```

no es el procedimiento que necesitamos.

En su lugar debemos utilizar:

```bash

git clone

```

---

## 📥 Clonar el repositorio
Podemos copiar la URL disponible en GitHub.

Por ejemplo:

```bash

git clone https://github.com/usuario/repositorio.git

```

O mediante SSH:

```bash

git clone git@github.com:usuario/repositorio.git

```

Esto descargará:

- 📁 Los archivos.

- 💾 Los commits.

- 🌿 Las referencias del repositorio.

- 📜 El historial disponible.

---

## 📂 Entrar al repositorio
Luego:

```bash

cd nombre-del-repositorio

```

Podemos verificar:

```bash

git status

```

---

## 🖥️ Abrir Visual Studio Code
Podemos abrir el proyecto con:

```bash

code .

```

Esto abre la carpeta actual en **Visual Studio Code**.

---

## ✏️ Modificar archivos
También podemos utilizar un editor de terminal como Vim:

```bash

vim historia.txt

```

Por ejemplo, podemos escribir:

```text

Aquí está un nuevo colaborador.

```

---

## 📝 Guardar y salir de Vim
Dentro de Vim podemos presionar:

```text

ESC

```

Luego:

```text

:wq

```

y finalmente:

```text

ENTER

```

Donde:

```text

w → write / guardar

q → quit / salir

```

---

## 🔎 Comprobar los cambios
Ejecutamos:

```bash

git status

```

---

## 💾 Crear el primer commit del colaborador
Si estamos modificando archivos que Git ya estaba siguiendo, podemos utilizar:

```bash

git commit -am "Mi primer commit como colaborador"

```

Sin embargo, si agregamos **archivos nuevos**, debemos utilizar:

```bash

git add .

```

y luego:

```bash

git commit -m "Mi primer commit como colaborador"

```

> [!IMPORTANT]

> `git commit -am` no agrega automáticamente archivos completamente nuevos.

---

## 📥 Actualizar antes de subir
Antes de realizar un `push` es recomendable comprobar si existen cambios nuevos en el repositorio remoto.

```bash

git fetch

```

Luego:

```bash

git pull origin main

```

---

## 🌿 Ver las ramas
```bash

git branch

```

Para mostrar también referencias remotas:

```bash

git branch -a

```

---

## 📜 Consultar el historial
```bash

git log

```

También podemos verlo gráficamente en la terminal:

```bash

git log --graph

```

Una opción más completa:

```bash

git log --graph --oneline --all --decorate

```

Ejemplo:

```text

* 91fa31b (HEAD -> main) Cambios del colaborador

* 71ce902 Actualización README

* d214eb3 Primer commit

```

---

## 📤 Realizar Push
Una vez que tengamos permisos:

```bash

git push origin main

```

Si estamos utilizando SSH correctamente configurado, GitHub autenticará nuestra computadora mediante las claves SSH.

Si utilizamos HTTPS, GitHub utiliza métodos de autenticación compatibles como credenciales almacenadas o tokens, no la contraseña normal de la cuenta.

---

## ⛔ ¿Qué ocurre si no tenemos permisos?
Si intentamos:

```bash

git push origin main

```

sin tener acceso al repositorio, GitHub rechazará la operación.

Esto puede significar que:

- No hemos sido agregados como colaboradores.

- La invitación todavía no fue aceptada.

- Nuestra cuenta no tiene permisos suficientes.

- Estamos autenticados con otra cuenta.

---

## ✅ Una vez aceptada la invitación
El colaborador puede volver a intentar:

```bash

git pull origin main

```

y luego:

```bash

git push origin main

```

Si tiene los permisos correspondientes, los cambios serán enviados al repositorio.

---

## 👀 ¿Cómo obtiene los cambios el propietario?
Supongamos que el colaborador hizo:

```text

Nuevo commit

     ↓

git push

     ↓

GitHub

```

El propietario todavía puede tener una versión antigua en su computadora.

Debe ejecutar:

```bash

git pull origin main

```

También puede actualizar las referencias mediante:

```bash

git fetch

```

---

## 📊 Ver quién realizó los cambios
Podemos consultar:

```bash

git log --stat

```

Esto muestra información como:

- Autor.

- Commit.

- Fecha.

- Mensaje.

- Archivos modificados.

- Cantidad de líneas agregadas o eliminadas.

---

## ✏️ Corregir el mensaje del último commit
Si escribimos incorrectamente el mensaje del último commit podemos utilizar:

```bash

git commit --amend

```

Esto permite modificar el último commit.

Si solamente queremos cambiar el mensaje:

```bash

git commit --amend -m "Mensaje corregido"

```

---

## ⚠️ Si todavía NO hicimos Push
No hay mayor problema.

Podemos ejecutar:

```bash

git commit --amend -m "Mensaje correcto"

```

Y después:

```bash

git push origin main

```

---

## ⚠️ Si el commit YA fue enviado a GitHub
Al utilizar `--amend`, Git crea un commit nuevo que reemplaza al anterior.

Por eso, si ya habíamos realizado `push`, puede ser necesario actualizar el historial remoto.

En ese caso se puede utilizar:

```bash

git push --force-with-lease origin main

```

> [!CAUTION]

> No debemos utilizar `force` sin comprender primero qué estamos modificando, especialmente en proyectos grupales.

>

> `--force-with-lease` es más seguro que `--force`, pero igualmente modifica el historial remoto.

---

## 🌳 Dividir el trabajo mediante ramas
Cuando varias personas trabajan sobre un mismo proyecto es recomendable dividir las tareas.

Por ejemplo:

```text

                    ┌── header

                    │

main ─────●──────────┤

                    │

                    └── footer

```

El propietario puede trabajar en:

```text

header

```

y otro colaborador en:

```text

footer

```

De esta manera cada integrante puede trabajar sin modificar directamente el trabajo del otro.

---

## 👨‍💻 Crear la rama `header`
```bash

git checkout -b header

```

Publicarla:

```bash

git push -u origin header

```

---

## 👨‍💻 Crear la rama `footer`
```bash

git checkout -b footer

```

Publicarla:

```bash

git push -u origin footer

```

---

## 🧠 ¿Qué hace `-u`?
Por ejemplo:

```bash

git push -u origin footer

```

establece una relación entre:

```text

rama local footer

        ↕

origin/footer

```

Después de eso normalmente podremos utilizar simplemente:

```bash

git push

```

y:

```bash

git pull

```

desde esa rama.

---

## 🔄 Flujo del colaborador
```text

Aceptar invitación

       ↓

git clone

       ↓

Crear/cambiar rama

       ↓

Modificar archivos

       ↓

git status

       ↓

git add .

       ↓

git commit

       ↓

git pull / fetch

       ↓

git push

       ↓

GitHub

```

---

## ⚡ Comandos principales de colaboración
| Acción | Comando |
|---|---|
| Clonar proyecto | `git clone URL` |
| Ver estado | `git status` |
| Ver ramas | `git branch` |
| Ver todas las ramas | `git branch -a` |
| Agregar cambios | `git add .` |
| Crear commit | `git commit -m "mensaje"` |
| Corregir último commit | `git commit --amend` |
| Descargar referencias | `git fetch` |
| Actualizar rama | `git pull origin main` |
| Ver historial | `git log` |
| Ver gráfico | `git log --graph` |
| Ver cambios del commit | `git log --stat` |
| Subir cambios | `git push origin main` |

---

# 🏢 Clase 10 — Flujo de Trabajo Profesional
> 📅 **Miércoles 14 de octubre de 2026**

## 🔀 Merge de ramas de desarrollo a `main`
Cuando varias personas trabajan en un mismo proyecto necesitamos mantener un flujo organizado.

El objetivo es evitar que varios desarrolladores modifiquen al mismo tiempo la versión estable del proyecto.

Una buena práctica consiste en trabajar utilizando distintas ramas.

---

## 🎯 Objetivo del flujo de trabajo
El flujo profesional busca:

- 👥 Permitir trabajo simultáneo.

- 🌿 Separar funcionalidades.

- 🛡️ Proteger la rama principal.

- 🔍 Revisar cambios.

- 🐛 Reducir conflictos.

- 📜 Mantener un historial claro.

- 🔀 Integrar únicamente trabajo terminado.

---

## 🌳 Ejemplo de estructura
Supongamos que tenemos tres desarrolladores:

```text

                     ┌── header

                     │

main ─────●───────────┼── footer

                     │

                     └── login

```

Cada programador trabaja en su propia rama.

Cuando terminan su tarea, los cambios pueden integrarse nuevamente en `main`.

---

## 🔢 Flujo de trabajo
## 1️⃣ Crear las ramas
Por ejemplo:

```bash

git branch header

git branch footer

git branch login

```

O directamente:

```bash

git checkout -b header

```

---

## 2️⃣ Asignar una rama a cada programador
Por ejemplo:

| Programador | Rama | Trabajo |
|---|---|---|
| Programador 1 | `header` | Encabezado |
| Programador 2 | `footer` | Pie de página |
| Programador 3 | `login` | Inicio de sesión |

Cada integrante trabaja sobre una parte determinada.

---

## 3️⃣ Actualizar el repositorio
Antes de comenzar es recomendable trabajar sobre la última versión disponible.

```bash

git checkout main

```

Luego:

```bash

git pull origin main

```

> [!NOTE]

> En proyectos modernos generalmente utilizaremos `main`. Si el proyecto utiliza `master`, el comando debe utilizar el nombre real de esa rama.

---

## 4️⃣ Cambiar a nuestra rama de trabajo
Por ejemplo:

```bash

git checkout header

```

O:

```bash

git switch header

```

---

## 5️⃣ Trabajar y realizar commits
Modificamos nuestros archivos.

Luego:

```bash

git status

```

Agregamos los cambios:

```bash

git add .

```

Creamos un commit:

```bash

git commit -m "Creo el header de la página"

```

Podemos hacer varios commits durante el desarrollo:

```text

header

  │

  ● Agrego estructura

  │

  ● Agrego menú

  │

  ● Corrijo estilos

```

---

## 6️⃣ Publicar nuestra rama
```bash

git push origin header

```

La primera vez también podemos utilizar:

```bash

git push -u origin header

```

Ahora tendremos:

```text

LOCAL                         GITHUB

header ─────────────────────→ origin/header

```

---

## 👨‍💼 7️⃣ Integrar el trabajo
El encargado de integrar el proyecto debe revisar las diferentes ramas.

Primero actualiza las referencias:

```bash

git fetch

```

Luego actualiza `main`:

```bash

git checkout main

git pull origin main

```

---

## 🔀 Fusionar una rama
Por ejemplo:

```bash

git merge header

```

Después:

```bash

git merge footer

```

Y:

```bash

git merge login

```

Finalmente:

```bash

git push origin main

```

---

## 📊 Flujo visual
Durante el desarrollo:

```text

              ●────●────● header

             /

main ●──────●

             \\

              ●────● footer

```

Luego del merge:

```text

              ●────●────●

             /           \\

main ●──────●─────────────●

             \           /

              ●────●─────

```

La rama `main` termina conteniendo el trabajo que fue integrado.

---

## ⚠️ Posibles conflictos
Un conflicto puede ocurrir cuando dos personas modifican la misma parte de un archivo.

Por ejemplo:

```text

Programador A

      ↓

Modifica línea 25

Programador B

      ↓

Modifica línea 25

```

Cuando Git intenta unir ambas versiones puede no saber cuál conservar.

Esto genera un:

```text

Merge Conflict

```

---

## 🛠️ Resolver un conflicto
Después de modificar manualmente el archivo y decidir qué contenido conservar:

```bash

git status

```

Luego:

```bash

git add .

```

Y finalmente:

```bash

git commit -m "Resuelvo conflicto de merge"

```

---

## 🌿 Flujo recomendado
```text

                GitHub

                   │

                   ↓

             git pull main

                   │

                   ↓

             Crear rama

                   │

                   ↓

                Trabajo

                   │

                   ↓

               git add

                   │

                   ↓

              git commit

                   │

                   ↓

               git push

                   │

                   ↓

             Revisar rama

                   │

                   ↓

                 Merge

                   │

                   ↓

                 main

```

---

## 💡 Ejemplo completo
## Programador
Actualizar `main`:

```bash

git checkout main

git pull origin main

```

Crear rama:

```bash

git checkout -b navbar

```

Trabajar y guardar:

```bash

git add .

git commit -m "Agrego barra de navegación"

```

Publicar:

```bash

git push -u origin navbar

```

---

## Encargado del proyecto
Actualizar:

```bash

git checkout main

git pull origin main

git fetch

```

Revisar las ramas:

```bash

git branch -a

```

Integrar:

```bash

git merge navbar

```

Subir el resultado:

```bash

git push origin main

```

---

## 🔄 Resumen del flujo profesional
| Paso | Acción | Comando principal |
|---:|---|---|
| 1 | Actualizar `main` | `git pull origin main` |
| 2 | Crear rama | `git checkout -b rama` |
| 3 | Trabajar | Modificar archivos |
| 4 | Preparar cambios | `git add .` |
| 5 | Guardar versión | `git commit -m "mensaje"` |
| 6 | Publicar rama | `git push -u origin rama` |
| 7 | Revisar cambios | `git log`, `git diff`, GitHub |
| 8 | Volver a `main` | `git checkout main` |
| 9 | Integrar | `git merge rama` |
| 10 | Publicar resultado | `git push origin main` |

---

## 🧠 Regla fácil de recordar
```text

PULL

  ↓

BRANCH

  ↓

WORK

  ↓

ADD

  ↓

COMMIT

  ↓

PUSH

  ↓

REVIEW

  ↓

MERGE

  ↓

MAIN

```

---

<details>

<summary><b>👥 Ver comandos esenciales de colaboración</b></summary>

<br>

```bash

git clone URL

git status

git pull origin main

git fetch

git branch -a

git checkout -b nueva-rama

git add .

git commit -m "Descripción del cambio"

git push -u origin nueva-rama

git log --graph --oneline --all

```

</details>

---

<details>

<summary><b>🔀 Ver flujo esencial de Merge</b></summary>

<br>

```bash

git checkout main

git pull origin main

git fetch

git merge nombre-rama

git push origin main

```

</details>

---

# 📦 Clase 11 — Flujo de Trabajo Profesional: Archivos Binarios

> 📅 **Miércoles 21 de octubre de 2026**

## 🧱 Archivos binarios en el repositorio

Las imágenes cargadas directamente en el repositorio pueden representar un problema porque suelen ser archivos pesados. Para Git y GitHub, las imágenes son un ejemplo de **archivo binario**.

A medida que incorporamos más archivos binarios, el repositorio puede aumentar considerablemente de tamaño. Esto hace que clonar, actualizar y trabajar con el proyecto resulte cada vez más pesado.

> [!IMPORTANT]
> Como buena práctica, debemos evitar cargar archivos binarios pesados que no sean realmente necesarios para el proyecto.

---

## 🖼️ ¿Por qué las imágenes pueden generar problemas?

Cuando incorporamos imágenes y otros archivos binarios al historial del repositorio, estos pasan a formar parte del proyecto y de sus versiones.

Si acumulamos muchos archivos de este tipo:

- 📦 El repositorio aumenta de tamaño.
- 📥 Clonar el proyecto puede requerir más tiempo y espacio.
- 🔄 Trabajar con el historial puede volverse más pesado.
- 👥 Todos los colaboradores terminan trabajando con esos archivos como parte del repositorio.

---

## 📏 Tamaño de los archivos

En la clase se destacó especialmente el límite de **100 MB** como referencia al trabajar con archivos en GitHub.

Si incorporamos un archivo binario demasiado pesado al historial, puede impedir que podamos subir normalmente nuestros cambios al repositorio remoto.

```text
Archivo binario pesado
        ↓
Se agrega al repositorio
        ↓
Forma parte del historial
        ↓
Intentamos hacer push
        ↓
Puede aparecer un problema por tamaño
```

> [!WARNING]
> Antes de agregar imágenes, videos u otros archivos pesados conviene revisar si realmente deben formar parte del repositorio.

---

## ✅ Idea principal de la clase

```text
Código y archivos necesarios
        ↓
Repositorio más liviano
        ↓
Clonado y actualización más simples
        ↓
Mejor flujo de trabajo en equipo
```

La idea principal es mantener el repositorio lo más ordenado y liviano posible, evitando incorporar archivos binarios pesados cuando no sean necesarios.

---

# 🎓 Clase 12 — Cierre del semestre

> 📅 **Miércoles 28 de octubre de 2026**

## 🏁 Flujo de trabajo profesional

Ya hemos llegado al nivel más alto de GitHub.

Es momento de presentar el `README.md` con todos los comandos y prácticas vistos en cada clase.

Al estar terminando el semestre, este archivo debe estar completo y realizado utilizando el lenguaje **Markdown**.

El README será solicitado durante la clase en vivo por Zoom.


---

# ⚡ Comandos rápidos

| Comando | ¿Qué hace? |
|---|---|
| `git init` | Inicializa un repositorio |
| `git clone URL` | Clona un repositorio |
| `git status` | Muestra el estado de los archivos |
| `git add .` | Agrega cambios al staging |
| `git commit -m "mensaje"` | Crea un commit |
| `git commit --amend` | Modifica el último commit |
| `git log` | Muestra el historial |
| `git log --graph --oneline --all` | Muestra el historial de forma gráfica |
| `git branch` | Muestra las ramas locales |
| `git branch -a` | Muestra ramas locales y remotas |
| `git checkout rama` | Cambia de rama |
| `git checkout -b rama` | Crea una rama y cambia a ella |
| `git switch rama` | Cambia de rama |
| `git switch -c rama` | Crea una rama y cambia a ella |
| `git fetch` | Descarga referencias del remoto |
| `git pull origin main` | Trae e integra cambios de `main` |
| `git merge rama` | Fusiona una rama con la rama actual |
| `git push origin main` | Sube cambios de `main` a GitHub |
| `git push -u origin rama` | Publica una rama y configura su upstream |
| `git remote -v` | Muestra los repositorios remotos |
| `git remote set-url origin URL` | Cambia la URL del remoto |
| `git tag` | Muestra los tags |
| `git tag v1.0` | Crea un tag |
| `git push origin --tags` | Sube todos los tags |
| `gitk` | Abre el visor gráfico de Git |

---

## 🔄 Flujo básico de Git

```text
Actualizar el proyecto
        ↓
Crear / elegir rama
        ↓
Modificar archivos
        ↓
    git status
        ↓
     git add .
        ↓
    git commit
        ↓
     git pull
        ↓
     git push
        ↓
      GitHub
```

---

## 💡 Regla fácil para recordar

```text
git add     → Preparo los cambios
git commit  → Guardo los cambios
git pull    → Traigo cambios desde GitHub
git push    → Envío mis commits a GitHub
git fetch   → Reviso cambios del remoto
git branch  → Trabajo con ramas
git merge   → Integro ramas
```

<details>
<summary><b>📌 Ver flujo esencial de trabajo</b></summary>

```bash
git status
git add .
git commit -m "Descripción del cambio"
git fetch
git pull origin main
git push origin main
```

</details>

---

<p align="center">
  <b>💻 ERROR-404 — Cohorte 2026</b>
</p>

<p align="center">
  📚 Git • GitHub • SSH • Branches • Tags • Colaboración • Merge • Markdown
</p>

<p align="center">
  Apuntes de Git & GitHub 🚀
</p>
