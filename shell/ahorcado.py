import random

# Lista de palabras para adivinar
palabras = ["estrella", "galaxia", "agujero", "cosmos", "planeta", "mision"]

# Selección aleatoria de palabra
palabra = random.choice(palabras)
palabra_guiones = "_" * len(palabra)
intentos = 6
letras_usadas = []

print("¡Bienvenido al Ahorcado!")
print("Tienes", intentos, "intentos para adivinar la palabra.")
print("La palabra tiene", len(palabra), "letras.")
print(palabra_guiones)

while intentos > 0:
    letra = input("Adivina una letra: ").lower()

    if letra in letras_usadas:
        print("Ya has usado esa letra. Intenta con otra.")
        continue

    if letra in palabra:
        print("¡Correcto!")
        palabra_guiones = "".join([letra if palabra[i] == letra else palabra_guiones[i] for i in range(len(palabra))])
    else:
        intentos -= 1
        print("Incorrecto. Te quedan", intentos, "intentos.")

    letras_usadas.append(letra)
    print(palabra_guiones)

    if "_" not in palabra_guiones:
        print("¡Felicidades! Has adivinado la palabra:", palabra)
        break

if intentos == 0:
    print("¡Se acabaron los intentos! La palabra era:", palabra)
