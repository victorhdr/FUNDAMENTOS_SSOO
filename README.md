# KósmOS Shell Galáctica 🚀

**KósmOS** es una terminal interactiva que emula un sistema operativo galáctico. Ofrece varios comandos útiles y divertidos, con un enfoque en procesos, archivos y juegos. A través de su consola, los usuarios pueden interactuar con comandos comunes de Linux, gestionar procesos, y jugar al "Ahorcado". ¡Embárcate en una misión espacial y explora el espacio de la terminal!

## Índice

- [🎯 Objetivo del Proyecto](#objetivo-del-proyecto)
- [📂 Estructura del Proyecto](#estructura-del-proyecto)
- [🚀 Cómo Ejecutar KósmOS](#cómo-ejecutar-kosmos)
- [🗑️ Desinstalación](#desinstalación)
- [✅ Comandos personalizados de KósmOS](#comandos-personalizados-kosmos)
- [🧬 Comandos relacionados con procesos](#comandos-relacionados-con-procesos)
- [⚙️ Comandos Comunes de Linux](#comandos-comunes-de-linux)
- [💡 Funcionalidades](#funcionalidades)


## 🎯 Objetivo del Proyecto

Crear una shell interactiva funcional que simule un sistema operativo galáctico, permitiendo a los usuarios ejecutar comandos tradicionales de Linux mientras exploran comandos personalizados y únicos inspirados en el espacio.


## 📂 Estructura del Proyecto

```plaintext

kosmos/
├── README.md                 # Documentación del proyecto
├── manual                    # Manual de usuario y documentación
│   ├── index.html            # Página de inicio
│   ├── about.html            # Información sobre el proyecto
│   ├── comandos.html         # Comandos disponibles
│   ├── contact.html
│   ├── features.html         # Funcionalidades
│   └── style.css             # Estilos de la interfaz
└── shell
    ├── shell.sh              # Script principal de la shell
    ├── helpers.sh            # Funciones auxiliares
    ├── install.sh            # Script de instalación            
    ├── uninstall.sh          # Script de desinstalación
    ├── ahorcado.py           # Minijuego ahorcado 
    └── volar.sh              # Simulación vuelo galáctico

```
- **manual/**: Contiene los archivos HTML de documentación, como `about.html` y `comandos.html`.

- **shell/**: Código principal de la shell galáctica (`shell.sh`, `install.sh`, `uninstall.sh`, etc).

- **ahorcado.py**: Juego de Ahorcado en Python que puedes jugar desde la terminal.

- **volar.sh**: Simulación animada de vuelo galáctico desde la consola.


## 🚀 Cómo Ejecutar KósmOS 

**Instalación:**

El usuario debe hacer que los scripts sean ejecutables con el comando
`chmod +x shell/*.sh`

El usuario ejecuta bash install.sh para instalar la shell en su directorio ~/my_shell.

El script crea los archivos necesarios y copia el script de la shell allí.

**Iniciar la Shell:**

El usuario ejecuta bash shell.sh para iniciar la shell interactiva.
`./install.sh`

Dentro de la shell, el usuario puede escribir comandos como install, uninstall, help, datetime, etc.

## 🗑️ Desinstalación

Para eliminar la shell, el usuario ejecuta bash uninstall.sh, lo que elimina todos los archivos creados durante la instalación.
`./unistall.sh`


## ✅ Comandos Personalizados de KósmOS

```bash
victor@kosmos > orbita             # Lista archivos como planetas
victor@kosmos > estrella hola.txt  # Crea un archivo
victor@kosmos > agujero hola.txt   # Elimina un archivo
victor@kosmos > hipersalto ..      # Cambia de directorio
victor@kosmos > mision             # Muestra procesos activos
victor@kosmos > help               # Abre comandos.html con lynx
victor@kosmos > about              # Abre about.html con lynx
victor@kosmos > fecha              # Muestra la fecha
victor@kosmos > salir              # Sale de la shell
```


## 🧬 Comandos relacionados con procesos:
```bash
victor@kosmos > pid                # Muestra el PID de la shell
victor@kosmos > lanzar-proceso     # Lanza un proceso que duerme
victor@kosmos > matar-proceso      # Mata ese proceso lanzado
```

## ⚙️ Comandos Comunes de Linux:
```bash
victor@kosmos > ls -l
victor@kosmos > whoami
victor@kosmos > echo "Hola KósmOS"
victor@kosmos > mkdir galaxia
```


## 💡 Funcionalidades
**Interfaz única:** Una consola con comandos inspirados en el espacio.

**Comandos personalizados:** Interactúa con tu sistema de archivos y procesos como si estuvieras explorando una galaxia.

**Comandos comunes de Linux:** También puedes usar comandos estándar de Linux como ls, echo, y mkdir.

**Interactúa con archivos HTML:** Puedes usar lynx para navegar por la documentación y obtener más información sobre KósmOS directamente desde la terminal.

