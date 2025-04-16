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
- [🪐 KósmOS Desktop UI](#kosmos-desktop-UI)


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
Para ello ejecutamos: `./install.sh`

El script crea los archivos necesarios y copia el script de la shell allí.

**Iniciar la Shell:**

El usuario ejecuta bash shell.sh para iniciar la shell interactiva.
Para ello ejecutamos: `./shell.sh`

Dentro de la shell, el usuario puede escribir comandos como install, uninstall, help, datetime, etc.

## 🗑️ Desinstalación

Para eliminar la shell, el usuario ejecuta bash uninstall.sh, lo que elimina todos los archivos creados durante la instalación. 

Para ello ejecutamos:`./unistall.sh`


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

# 🪐 KósmOS Desktop UI

**KósmOS Desktop UI** es una interfaz gráfica desarrollada en Python con `tkinter` que simula un entorno de escritorio espacial. Permite al usuario interactuar con distintos scripts y recursos de manera intuitiva y visual, con un toque galáctico.

---

## 🌌 Características

- **Lanzar Shell Galáctica**: Ejecuta un script de shell personalizado.
- **Jugar al Ahorcado**: Abre un juego clásico implementado en Python.
- **Iniciar Vuelo Galáctico**: Lanza un script especial que simula un despegue espacial.
- **Información**: Muestra un mensaje informativo sobre KósmOS.
- **Abrir Página Web**: Abre un archivo `index.html` localizado en la carpeta `manual/`.
- **Salir**: Cierra la interfaz.

---

### 🗂️ Estructura del Proyecto

PROYECTO GALÁCTICO

1. Archivos principales
   1.1 README.md              → Documentación principal del proyecto

2. Desktop (Interfaz Gráfica)
   2.1 desktop_buscador_html_ui.py → UI con búsqueda de HTML
   2.2 desktop_ui.py               → Interfaz gráfica principal
   2.3 galaxy.png                  → Imagen de fondo para la interfaz
   2.4 icons/                      → Iconos utilizados en la UI
       2.4.1 browser.png
       2.4.2 exit.png
       2.4.3 game.png
       2.4.4 html_icon.png
       2.4.5 info.png
       2.4.6 rocket.png
       2.4.7 space.png
       2.4.8 spaceship.png

3. Shell (Scripts y Juegos)
   3.1 ahorcado.py           → Juego del ahorcado
   3.2 helpers.sh            → Funciones auxiliares para los scripts
   3.3 install.sh            → Instalador de la shell galáctica
   3.4 shell.sh              → Script principal de la shell
   3.5 uninstall.sh          → Desinstalador
   3.6 volar.sh              → Script de simulación de vuelo

4. Manual (Documentación HTML)
   4.1 index.html            → Página de inicio del manual
   4.2 about.html            → Información general del proyecto
   4.3 comandos.html         → Lista de comandos disponibles
   4.4 contact.html          → Información de contacto
   4.5 features.html         → Funcionalidades destacadas
   4.6 style.css             → Estilos del manual

---

## 🚀 Requisitos

- Python 3.x
- Módulos: `tkinter`, `PIL` (Pillow)
- Navegador web instalado en el sistema (para abrir `index.html`)
- Entorno Linux recomendado (por uso de `gnome-terminal`)

Instala dependencias con:

```bash
pip install Pillow
```

## ▶️ Ejecución
Asegúrate de que las carpetas shell/, desktop/ y manual/ estén al mismo nivel.

Coloca el archivo index.html en la carpeta manual/.

Ejecuta el script principal: `python3 desktop/desktop_prueba.py`


## ❗ Notas
- En sistemas que no cuenten con gnome-terminal (como algunas distribuciones minimalistas o entornos simulados), los scripts podrían no abrir correctamente. En ese caso, se recomienda probar en una máquina virtual con Ubuntu o similar.

- El diseño visual está optimizado para resoluciones de 800x600 o superiores.