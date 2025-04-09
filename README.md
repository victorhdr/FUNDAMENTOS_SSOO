# Shell Interactiva Personalizada

## Instalación

Para instalar la shell, ejecuta el siguiente comando:

```bash
bash install.sh

FUNDAMENTOS_SSOO/
├── manual/                   # Carpeta con los ficheros manuales.
│   ├── index.html            # Página principal con información sobre KósmOS.
│   ├── comandos.html         # Página con los comandos de KósmOS.
│   ├── features.html         # Página con funcionalidades de KósmOS.
│   ├── contact.html          # Página de contacto de KósmOS.
│   └── style.css             # Estilos compartidos entre las páginas.
├── shell/                    # Carpeta para la shell interactiva.
│   ├── shell.sh              # Script principal de la shell interactiva.
│   ├── install.sh            # Script de instalación.
│   ├── uninstall.sh          # Script de desinstalación.
│   └── helpers.sh            # Funciones auxiliares (por ejemplo, para la fecha, dibujitos, etc.).
├── README.md                 # Documentación general del proyecto.


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Comandos Disponibles</title>
</head>
<body>
    <h1>Comandos de la Shell Interactiva</h1>
    <ul>
        <li><strong>install</strong>: Instala la shell.</li>
        <li><strong>uninstall</strong>: Desinstala la shell.</li>
        <li><strong>help</strong>: Muestra la ayuda de los comandos.</li>
        <li><strong>about</strong>: Información sobre el creador del proyecto.</li>
        <li><strong>datetime</strong>: Muestra la fecha y hora actual.</li>
        <li><strong>dibujito</strong>: Muestra un dibujo ASCII.</li>
        <li><strong>exit</strong>: Sale de la shell interactiva.</li>
    </ul>
</body>
</html>

Paso a Paso de la Ejecución:
Instalación:

El usuario ejecuta bash install.sh para instalar la shell en su directorio ~/my_shell.

El script crea los archivos necesarios y copia el script de la shell allí.

Iniciar la Shell:

El usuario ejecuta bash shell.sh para iniciar la shell interactiva.

Dentro de la shell, el usuario puede escribir comandos como install, uninstall, help, datetime, etc.

Comandos:

install llama al script install.sh para instalar la shell.

uninstall llama al script uninstall.sh para desinstalar la shell.

help abre la página de ayuda en formato HTML con lynx.

about muestra la sección "Sobre nosotros" de la página de ayuda.

datetime muestra la fecha y hora actual.

dibujito muestra un dibujo en ASCII.

Desinstalación:

Para eliminar la shell, el usuario ejecuta bash uninstall.sh, lo que elimina todos los archivos creados durante la instalación.

✅ Comandos personalizados de KósmOS:
victor@kosmos > orbita              # Lista archivos como planetas
victor@kosmos > estrella hola.txt   # Crea un archivo
victor@kosmos > agujero hola.txt    # Elimina un archivo
victor@kosmos > hipersalto ..       # Cambia de directorio
victor@kosmos > mision              # Muestra procesos activos
victor@kosmos > help                # Abre comandos.html con lynx
victor@kosmos > about               # Abre about.html con lynx
victor@kosmos > fecha               # Muestra la fecha
victor@kosmos > salir               # Sale de la shell


🧬 Comandos relacionados con procesos
victor@kosmos > pid                 # Muestra el PID de la shell
victor@kosmos > lanzar-proceso     # Lanza un proceso que duerme
victor@kosmos > matar-proceso      # Mata ese proceso lanzado

⚙️ Comandos normales de Linux
victor@kosmos > ls -l
victor@kosmos > whoami
victor@kosmos > echo "Hola KósmOS"
victor@kosmos > mkdir galaxia


KósmOS - Sistema Operativo Galáctico
Descripción
KósmOS es una shell interactiva inspirada en el universo, diseñada como un sistema operativo galáctico con un enfoque único. Permite la ejecución de comandos básicos de Linux junto con comandos personalizados que simulan una experiencia cósmica, como si estuvieras en el espacio exterior.

Este proyecto simula una consola de comandos interactiva donde puedes realizar tareas comunes como crear y eliminar archivos, explorar procesos activos, y más, todo con un toque galáctico.

