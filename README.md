# 🎮 Nacalandia: Portable Multi-Console Hub

### Custom Gaming Dashboard | Emulation & System Optimization

**Nacalandia** es un ecosistema portable de alto rendimiento diseñado para centralizar y elevar la experiencia de retro-gaming. Este proyecto fusiona la potencia de sistemas como **RetroArch** y entornos **Conda** aislados con una interfaz de usuario dinámica y ultra-estilizada desarrollada sobre **React** y **Electron**.

---

## 📸 Media & Interface
Aquí podés ver la interfaz personalizada de Nacalandia funcionando en alta resolución, destacando la curaduría visual y la organización de sistemas.

<p align="center">
  <img src="Principal.png" alt="Dashboard Principal" width="85%">
  <br><i>Dashboard Principal - Acceso Rápido</i>
</p>

<p align="center">
  <img src="NES.png" alt="Nacalandia Systems" width="45%">
  <img src="GBA.png" alt="Nacalandia Custom Theme GBA" width="45%">
  <br><i>Selección de Sistemas Retro & Custom Theme GBA</i>
</p>

<p align="center">
  <img src="MAME.png" alt="Nacalandia Custom Theme Arcade" width="45%">
  <img src="Cores.png" alt="Integrated Cores" width="45%">
  <br><i>Custom Theme MAME & Integrated Cores System Info</i>
</p>

---

## 🚀 Características Principales

* **Multi-Sistema Nativo:** Soporte integrado y automático para N64, Wii, GameCube, Xbox, NeoGeo, MAME, GBA, SNES y más.
* **Filosofía Zero-Friction:** Portabilidad absoluta. Ejecución directa desde unidades externas sin instalación, sin rastros en el registro de Windows y sin dependencias globales.
* **Interfaz Inteligente (Dynamic Ricing):** UI desarrollada en **React** que adapta automáticamente su paleta cromática e iconos detectando el sistema cargado.
* **Búsqueda de Medios Integrada:** Conexión directa con el explorador de archivos nativo para una carga de ROMs robusta y sin fallos de permisos.
* **Entorno Aislado:** Inyección de ejecución mediante entornos **Conda** portátiles para garantizar la compatibilidad de librerías en cualquier PC.

---

## 🛠️ Stack Tecnológico

![React](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)
![Electron](https://img.shields.io/badge/Electron-47848F?style=for-the-badge&logo=electron&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Conda](https://img.shields.io/badge/Conda-44A833?style=for-the-badge&logo=anaconda&logoColor=white)
![Vulkan](https://img.shields.io/badge/Vulkan-BC181E?style=for-the-badge&logo=vulkan&logoColor=white)

---

## 📂 Estructura del Proyecto

* `Config/`: Archivos `.cfg` e `.ini` optimizados para baja latencia.
* `Scripts/`: Automatizaciones en `.bat` y **Python** para la gestión de procesos.
* `Themes/`: Definiciones de estilos y assets visuales exclusivos.
* `Runtime/`: Entorno Conda portátil precargado (`nacal_env`).
* `Emulator/`: Binarios optimizados y núcleos (cores) de emulación de baja latencia.

---

## ⚙️ Optimización y Configuración

Para garantizar una respuesta inmediata (**low input lag**), Nacalandia utiliza plantillas que priorizan el renderizado por hardware vía **Vulkan**.

Ejemplo de `nacalandia_optimized.cfg`:
```ini
video_driver = "vulkan"
video_vsync = "true"
video_hard_sync = "true"
video_frame_delay = 0
savestate_auto_save = "true"

---

##⚡ Automatización de Arranque
El proyecto incluye un script de pre-vuelo que valida la integridad del entorno antes de inicializar la interfaz gráfica.

start_nacalandia.bat:
@echo off
echo [SYSTEM] Iniciando Nacalandia Retro Hub...
if not exist ".\runtime\envs\nacal_env" (
    echo [ERROR] Entorno Conda no detectado.
    pause
    exit
)
start "" ".\dist_electron\Nacalandia.exe"
exit

---

📖 Mi Visión
Nacalandia nació de la pasión por el Retro-Gaming y la necesidad técnica de poseer una estación de juego que sea tan potente internamente como estética externamente. Es la unión definitiva entre el software de emulación de vanguardia y la personalización extrema de sistemas operativos portátiles.

Nacal Team | 2026
