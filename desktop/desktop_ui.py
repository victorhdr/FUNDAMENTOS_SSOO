import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
import subprocess
import os

# Ruta base (carpeta /desktop)
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ICONS_DIR = os.path.join(SCRIPT_DIR, "icons")
SHELL_DIR = os.path.join(SCRIPT_DIR, "..", "shell")

# Funciones para lanzar scripts desde la shell
def launch_shell():
    subprocess.Popen(["gnome-terminal", "--", "bash", os.path.join(SHELL_DIR, "shell.sh")])

def launch_ahorcado():
    subprocess.Popen(["gnome-terminal", "--", "python3", os.path.join(SHELL_DIR, "ahorcado.py")])

def launch_volar():
    subprocess.Popen(["gnome-terminal", "--", "bash", os.path.join(SHELL_DIR, "volar.sh")])

def show_info():
    messagebox.showinfo("KósmOS", "¡Bienvenido a la interfaz galáctica de KósmOS! \nExplora el universo con estilo.")

# Crear ventana principal
root = tk.Tk()
root.title("🪐 KósmOS Desktop UI")
root.geometry("800x600")
root.configure(bg="black")

# Fondo (opcional)
try:
    bg_image_path = os.path.join(SCRIPT_DIR, "galaxy.png")
    bg_image = Image.open(bg_image_path).resize((800, 600), Image.LANCZOS)
    bg_photo = ImageTk.PhotoImage(bg_image)
    bg_label = tk.Label(root, image=bg_photo)
    bg_label.place(x=0, y=0, relwidth=1, relheight=1)
except Exception as e:
    print(f"No se pudo cargar el fondo: {e}")

# Configuración de botones
button_config = {
    "font": ("Courier", 12, "bold"),
    "bg": "#1e1e1e",
    "fg": "#39ff14",
    "activebackground": "#333333",
    "activeforeground": "#00ffcc",
    "bd": 2,
    "relief": "ridge",
    "width": 200,
    "height": 40,
    "compound": "left",  # imagen a la izquierda del texto
    "anchor": "w",       # alinear texto a la izquierda
    "padx": 10
}

# Cargar iconos
def load_icon(name):
    path = os.path.join(ICONS_DIR, name)
    try:
        img = Image.open(path).resize((24, 24), Image.LANCZOS)
        return ImageTk.PhotoImage(img)
    except Exception as e:
        print(f"Error al cargar el icono {name}: {e}")
        return None

icons = {
    "shell": load_icon("rocket.png"),
    "ahorcado": load_icon("game.png"),
    "volar": load_icon("space.png"),
    "info": load_icon("info.png"),
    "exit": load_icon("exit.png"),
}

# Crear botones con iconos
buttons = [
    ("Lanzar Shell Galáctica", launch_shell, icons["shell"]),
    ("Jugar al Ahorcado", launch_ahorcado, icons["ahorcado"]),
    ("Iniciar Vuelo Galáctico", launch_volar, icons["volar"]),
    ("Información", show_info, icons["info"]),
    ("Salir", root.quit, icons["exit"]),
]

# Mostrar botones
for i, (text, command, icon) in enumerate(buttons):
    btn = tk.Button(root, text=" " + text, image=icon, command=command, **button_config)
    btn.image = icon  # Necesario para evitar que se libere la imagen
    btn.place(relx=0.5, rely=0.3 + i * 0.12, anchor=tk.CENTER)

# Iniciar bucle de la interfaz
root.mainloop()
