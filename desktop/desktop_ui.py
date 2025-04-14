import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
import subprocess
import os

# Ruta base (carpeta /desktop)
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
SHELL_DIR = os.path.join(SCRIPT_DIR, "..", "shell")

# Funciones para lanzar scripts desde la shell
def launch_shell():
    subprocess.Popen(["gnome-terminal", "--", "bash", os.path.join(SHELL_DIR, "shell.sh")])

def launch_ahorcado():
    subprocess.Popen(["gnome-terminal", "--", "python3", os.path.join(SHELL_DIR, "ahorcado.py")])

def launch_volar():
    subprocess.Popen(["gnome-terminal", "--", "bash", os.path.join(SHELL_DIR, "volar.sh")])

def show_info():
    messagebox.showinfo("KósmOS", "Bienvenido a la interfaz galáctica de KósmOS 🚀\nExplora el universo con estilo.")

# Crear ventana principal
root = tk.Tk()
root.title("🪐 KósmOS Desktop UI")
root.geometry("800x600")
root.configure(bg="black")

# Fondo (opcional: cambia "galaxy.jpg" por una imagen que tengas)
try:
    bg_image_path = os.path.join(SCRIPT_DIR, "galaxy.png")
    bg_image = Image.open(bg_image_path)
    bg_image = bg_image.resize((800, 600), Image.LANCZOS)
    bg_photo = ImageTk.PhotoImage(bg_image)
    bg_label = tk.Label(root, image=bg_photo)
    bg_label.place(x=0, y=0, relwidth=1, relheight=1)
except Exception as e:
    print(f"No se pudo cargar el fondo: {e}")

# Crear botones
button_config = {
    "font": ("Courier", 12, "bold"),
    "bg": "#1e1e1e",
    "fg": "#39ff14",
    "activebackground": "#333333",
    "activeforeground": "#00ffcc",
    "bd": 2,
    "relief": "ridge",
    "width": 20,
    "height": 2
}

buttons = [
    ("🚀 Lanzar Shell Galáctica", launch_shell),
    ("🎮 Jugar al Ahorcado", launch_ahorcado),
    ("🌌 Iniciar Vuelo Galáctico", launch_volar),
    ("ℹ️ Información", show_info),
    ("❌ Salir", root.quit)
]

for i, (text, command) in enumerate(buttons):
    btn = tk.Button(root, text=text, command=command, **button_config)
    btn.place(relx=0.5, rely=0.3 + i * 0.12, anchor=tk.CENTER)

# Iniciar bucle de la interfaz
root.mainloop()
