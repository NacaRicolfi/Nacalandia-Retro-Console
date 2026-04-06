@echo off
title Nacalandia Bootloader
echo [SYSTEM] Iniciando Nacalandia Retro Hub...

:: Verificar si existe el entorno Conda portátil
if not exist ".\runtime\envs\nacal_env" (
    echo [ERROR] No se detecto el entorno Conda en .\runtime
    echo Por favor, asegurese de que la carpeta runtime este presente.
    pause
    exit
)

echo [SYSTEM] Cargando librerias de Python y React...
:: Lanzar el ejecutable de Nacalandia
start "" ".\dist_electron\Nacalandia 1.0.0.exe"

echo [SUCCESS] Nacalandia esta corriendo en proceso separado.
exit
```

---

### 💡 Un consejo extra para tu GitHub:
En el archivo `launcher.py` (si lo subís), asegurate de que en la parte donde manejás las extensiones de **Genesis**, agregues `.bin` a la lista. Sería algo así como:

```python
# Ejemplo de arreglo en launcher.py
genesis_exts = ['.md', '.smd', '.bin', '.gen']
if ext in genesis_exts:
    core = "genesis_plus_gx_libretro.dll"
