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

* [Clase 1 — Uso de GitHub](#-clase-1--uso-de-github)
* [Clase 2 — Clave SSH](#-clase-2--clave-ssh)
* [Clase 3 — Git y GitHub](#-clase-3--git-y-github)
* [Clase 4 — Tu primer Push](#-clase-4--tu-primer-push)
* [Clase 5 — Git Tag y Versiones](#-clase-5--git-tag-y-versiones)
* [Clase 6 — Error con Tags](#-clase-6--error-con-tags)
* [Clase 7 — README grupal](#-clase-7--readme-grupal)
* [Comandos rápidos](#-comandos-rápidos)

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

# ⚡ Comandos rápidos

| Comando                         | ¿Qué hace?                        |
| ------------------------------- | --------------------------------- |
| `git init`                      | Inicializa un repositorio         |
| `git clone URL`                 | Clona un repositorio              |
| `git status`                    | Muestra el estado de los archivos |
| `git add .`                     | Agrega cambios al staging         |
| `git commit -m "mensaje"`       | Crea un commit                    |
| `git log`                       | Muestra el historial              |
| `git branch`                    | Muestra las ramas                 |
| `git checkout rama`             | Cambia de rama                    |
| `git switch rama`               | Cambia de rama                    |
| `git branch -M main`            | Renombra la rama actual a `main`  |
| `git fetch`                     | Descarga referencias del remoto   |
| `git pull`                      | Descarga e integra cambios        |
| `git merge rama`                | Fusiona una rama                  |
| `git push origin main`          | Sube cambios a GitHub             |
| `git remote -v`                 | Muestra los repositorios remotos  |
| `git remote set-url origin URL` | Cambia la URL del remoto          |
| `git tag`                       | Muestra los tags                  |
| `git tag v1.0`                  | Crea un tag                       |
| `git push origin --tags`        | Sube todos los tags               |
| `gitk`                          | Abre el visor gráfico de Git      |

---

# 🔄 Flujo básico de Git

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

## 💡 Regla fácil para recordar

```text
git add     → Preparo los cambios
git commit  → Guardo los cambios
git pull    → Traigo cambios desde GitHub
git push    → Envío mis commits a GitHub
git fetch   → Reviso cambios del remoto
```

---

<details>

<summary><b>📌 Ver comandos esenciales</b></summary>

<br>

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

<details>

<summary><b>🏷️ Ver comandos esenciales de Tags</b></summary>

<br>

```bash
git tag
git tag v1.0
git tag -a v1.0 -m "Versión 1.0"
git push origin v1.0
git push origin --tags
git tag -d v1.0
```

</details>

---

<p align="center">
  <b>💻 ERROR-404 — Cohorte 2026</b>
</p>

<p align="center">
  📚 Git • GitHub • SSH • Branches • Tags • Markdown
</p>

<p align="center">
  Apuntes de Git & GitHub 🚀
</p>
