# Actividad: Entorno Virtual de Python y Git

Este repositorio contiene la configuración inicial de un entorno de desarrollo profesional de Python realizado de forma manual a través de la terminal.

## Pasos Realizados (Comandos)
1. Creación del directorio: `mkdir python-final`
2. Acceso a la carpeta: `cd python-final`
3. Inicialización de Git: `git init`
4. Creación del archivo de código: `touch finales.py`
5. Apertura de VS Code: `code .`
6. Comprobación de versión de Python: `python -V`
7. Creación del entorno virtual: `python3 -m venv venv`
8. Activación del entorno: `source venv/bin/activate`
9. Actualización de PIP: `python -m pip install --upgrade pip`

---

## Investigación: ¿Qué es el PIP y por qué lo actualizamos?

### ¿Qué es PIP?
**PIP** (*Pip Installs Packages*) es el sistema de gestión de paquetes estándar para Python. Nos permite instalar, actualizar y administrar librerías o módulos adicionales que no vienen de forma nativa con Python (como Django, Flask, Pandas, etc.).

### ¿Por qué lo actualizamos?
* **Seguridad:** Para corregir vulnerabilidades del sistema de instalación.
* **Compatibilidad:** Las librerías modernas requieren versiones de PIP actualizadas para instalarse bien.
* **Rendimiento:** Trae mejoras de velocidad y parches de errores (bugfixes).