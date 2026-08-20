# Clase 9-A: Miércoles 10 de Junio del 2026

## Fusión de ramas con Git merge (Parte 10)

La fusión en Git es la forma en que este sistema une un historial bifurcado. El comando `git merge` permite integrar líneas de desarrollo independientes generadas por `git branch` en una sola rama. Con este comando, podemos crear un nuevo commit que combina dos ramas o branches: la rama actual y la rama que se indica después del comando.

Estos comandos de fusión del merge afectan solo a la rama actual y no a la rama de destino. Por lo tanto, te recomendamos utilizar `git checkout` para seleccionar la rama actual y `git branch -d` para eliminar la rama de destino obsoleta.

### Funcionamiento de Git merge
Git merge fusiona secuencias de confirmaciones en un solo historial, generalmente para combinar dos ramas. Busca una confirmación de base común y genera una confirmación de fusión que representa la combinación de las dos ramas hasta el resultado final.

---

## ¿Cómo unir dos ramas en Git?

Para combinar ramas en tu repositorio local, usa `git checkout` para cambiar a la rama donde deseas fusionar. Por lo general, esta es la rama principal. Luego, emplea `git merge` y especifica el nombre de la otra rama que deseas traer a esta rama. Ten en cuenta que esto es una combinación de avance rápido (*fast-forward*).

### ¿Cómo realizar un merge en Git?
Para hacer un merge en Git, primero asegúrate de estar en la rama correcta. Después, usa el comando `git merge` seguido del nombre de la rama que quieres combinar. Por ejemplo, si quieres crear un nuevo commit en la rama `master` con los cambios de la rama `segunda`, usa este comando:

```bash
git checkout master
git merge segunda

# Clase 9-B: Miércoles 10 de Junio del 2026

## Resolución de conflictos al hacer merge

### Sección lectura

Git nunca borra nada, a menos que nosotros se lo indiquemos. Cuando usamos los comandos `git merge` o `git checkout` estamos cambiando de rama o creando un nuevo commit, no borrando ramas ni commits (recuerda que puedes borrar commits con `git reset` y ramas con `git branch -d`).

Git es muy inteligente y puede resolver algunos conflictos automáticamente: cambios, nuevas líneas, entre otros. Pero algunas veces no sabe cómo resolver estas diferencias, por ejemplo, cuando dos ramas diferentes hacen cambios distintos a una misma línea.

Esto lo conocemos como **conflicto** y lo podemos resolver manualmente. Solo debemos hacer el merge, ir a nuestro editor de código y elegir si queremos quedarnos con alguna de estas dos versiones o algo diferente. Algunos editores de código como *Visual Studio Code* nos ayudan a resolver estos conflictos sin necesidad de borrar o escribir líneas de texto, basta con hacer clic en un botón y guardar el archivo.

Recuerda que siempre debemos crear un nuevo commit para aplicar los cambios del merge. Si Git puede resolver el conflicto, hará commit automáticamente. Pero, en caso de que no pueda resolverlo, debemos solucionarlo y hacer el commit.

Los archivos con conflictos por el comando `git merge` entran en un nuevo estado que conocemos como **Unmerged**. Funcionan muy parecido a los archivos en estado *Unstaged*, algo así como un estado intermedio entre *Untracked* y *Unstaged*. Solo debemos ejecutar `git add` para pasarlos al área de staging y `git commit` para aplicar los cambios en el repositorio.

#### Cómo revertir un merge
Si nos hemos equivocado y queremos cancelar el merge, debemos usar el siguiente comando:
```bash
git merge --abort

# Lectura 1-A: Miércoles 10 de Junio del 2026

## Cómo funcionan las llaves públicas y privadas

### Sección lectura
Las llaves públicas y privadas, conocidas también como **cifrado asimétrico de un solo camino**, sirven para mandar mensajes privados entre varios nodos con la lógica de que firmas tu mensaje con una llave pública vinculada con una llave privada que puede leer el mensaje.

Las llaves públicas y privadas nos ayudan a cifrar y descifrar nuestros archivos de forma que los podamos compartir sin correr el riesgo de que sean interceptados por personas con malas intenciones.

### Cómo funciona un mensaje cifrado con llaves públicas y privadas
* Ambas personas deben crear su llave pública y privada.
* Ambas personas pueden compartir su llave pública a las otras partes (recuerda que esta llave es pública, no hay problema si la “interceptan”).
* La persona que quiere compartir un mensaje puede usar la **llave pública de la otra persona** para cifrar los archivos y asegurarse que solo puedan ser descifrados con la **llave privada** de la persona con la que queremos compartir el mensaje.
* El mensaje está cifrado y puede ser enviado a la otra persona sin problemas en caso de que los archivos sean interceptados.
* La persona a la que enviamos el mensaje cifrado puede emplear su **llave privada** para descifrar el mensaje y ver los archivos.

> ⚠️ **Nota:** Puedes compartir tu llave pública, pero **nunca** tu llave privada.

# Lectura 1-B: Miércoles 10 de Junio del 2026

## Configura tus llaves SSH en local y 2FA

### Sección lectura
Si usamos GitHub solo con usuario y contraseña, ante la pérdida de nuestra PC ponemos en riesgo nuestros proyectos y los de los clientes. Para evitar hackeos, agregamos una capa de seguridad basada en un entorno de **llaves públicas y privadas (SSH)**. Esto ofrece una ventaja doble: mayor seguridad y no tener que ingresar usuario y contraseña nunca más.

Las llaves SSH no son por repositorio o proyecto, sino **por persona y por máquina/ordenador**. 

* Generamos una llave privada y una pública en nuestra PC.
* Le enviamos la **llave pública** a GitHub.
* Nos conectamos mediante el protocolo **SSH** (en lugar de HTTPS). En la primera conexión, GitHub asocia la clave pública con nuestra privada y nos envía su propia clave cifrada de forma automática. 
* Se puede añadir una contraseña extra (*passphrase*) sobre la llave privada para hacerla aún más segura.

---

### Comandos para generar y configurar las llaves SSH

```bash
# 1. Ver la configuración actual de Git (se puede ejecutar en cualquier ruta)
git config -l

# 2. Configurar o actualizar el correo global de GitHub
git config --global user.email "alumnos@mail.com"

# 3. Generar el par de llaves (RSA de 4096 bits)
# Nota: Presionar Enter para la ruta por defecto y definir una contraseña que recuerdes siempre.
ssh-keygen -t rsa -b 4096 -C "alumnos@mail.com"

# 4. Encender el "servidor" o agente de llaves SSH de la computadora
eval $(ssh-agent -s)

# 5. Añadir la llave privada al servidor (La virgulilla '~' representa la carpeta Home de tu usuario)
ssh-add ~/.ssh/id_gd456123