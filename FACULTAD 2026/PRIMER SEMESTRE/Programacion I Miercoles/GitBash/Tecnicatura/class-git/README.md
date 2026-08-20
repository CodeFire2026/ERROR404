# Mis apuntes de la Tecnicatura 2026
## Clase 1, 2 y 3 de GitBash

## CLASE 4: Analizar cambios en los archivos de tu proyecto
* `git commit` -> Abre el editor interno si olvidamos poner el mensaje con -m.
* `git show` -> Muestra en detalle los cambios exactos del último commit realizado.
* `git diff [hash1] [hash2]` -> Compara las diferencias de código entre dos commits distintos.

## CLASE 6: Viajar en el tiempo (Reset y Checkout) y Ramas
* `git log --oneline` -> Muestra el historial de commits resumido en una sola línea con hashes cortos.
* `git reset [hash]` -> Vuelve a un commit anterior dejando los cambios sueltos en el disco (suave).
* `git reset --hard [hash]` -> Borra absolutamente todo y vuelve el proyecto al estado exacto de ese commit pasado.
* `git log --stat` -> Muestra qué archivos cambiaron en cada commit y cuántos bits/líneas se modificaron.
* `git checkout [hash]` -> Nos permite "espiar" cómo era el archivo en el pasado sin borrar el presente.
* `git checkout master` -> Nos regresa a la versión actual y principal del proyecto.
* `git branch [nombre]` -> Crea una nueva rama (un camino alternativo para programar sin romper la rama principal).
* `git branch` -> Lista todas las ramas que existen en el proyecto.
* `git branch -d [nombre]` -> Borra una rama secundaria de forma segura.

## CLASE 7: Git Reset vs. Git Rm
* `git reset --soft [hash]` -> Borra los commits del historial pero mantiene tus cambios listos en Staging.
* `git reset --hard [hash]` -> El destructor. Borra los commits, el área de staging y los archivos del disco duro.
* `git reset HEAD [archivo]` -> Saca un archivo del área de preparación (Staging) a Unstaged sin borrar tus cambios.
* `git rm --cached [archivo]` -> Elimina el archivo del radar de Git (deja de trackearlo) pero lo mantiene intacto en el disco duro.
* `git rm --force [archivo]` -> Elimina el archivo tanto del control de Git como del disco duro por completo.
* `git revert [hash]` -> Deshace los cambios de un commit de forma segura creando un nuevo commit, sin alterar la historia pasada.
