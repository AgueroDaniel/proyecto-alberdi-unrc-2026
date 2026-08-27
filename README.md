# Reservas Club Alberdi

Aplicación web para la gestión y consulta de reservas del salón de eventos del **Club Alberdi**, ubicado en la ciudad de Río Cuarto. Este proyecto fue desarrollado como parte de una actividad académica, con fines educativos y sin fines de lucro.

## ✨ Objetivos

* Facilitar la administración de reservas del salón del club.
* Brindar una interfaz sencilla para registrar y consultar eventos.
* Garantizar la persistencia y organización de los datos.

## 👥 Integrantes del proyecto version: 2026 (Actual)
* Ayelen Guzman – [@ielen](https://github.com/ielen)
* Maira Ayelen Quiroga – [@maiQuiroga](https://github.com/maiQuiroga)
* Gabriela Soledad – [@Sol-Gaby](https://github.com/Sol-Gaby)
* Mercedes Vega – [@MercedesVega08](https://github.com/MercedesVega08)
* Daniel Ignacio Agüero – [@AgueroDaniel](https://github.com/AgueroDaniel)

## 👥 Integrantes del proyecto version: 2025 (Primera version)

* Damian Dalio – [@ddalio](https://github.com/ddalio)
* Jhonatan Calle – [@Jhonatan-calle](https://github.com/Jhonatan-calle)
* Trinidad Aguirre – [@TrinidadSA](https://github.com/TrinidadSA)
* Agostina Rodriguez – [@agosrodriguez2](https://github.com/agosrodriguez2)
* Virginia Soledada Gamba - [@Virginia-Gamba](https://github.com/Virginia-Gamba)


## 📉 Funcionalidades a desarrollar

1. Ingreso de una reserva. (asignar automáticamente un id (PK) de la tabla reserva)
2. Consulta de una reserva (por algún campo a definir) Por varias opciones de sentido común
3. Modificación de datos de una reserva
4. Eliminación una reserva existente
5. Listar todos los eventos registrados entre dos fechas (ordenados cronológicamente).
6. Listar disponibilidad del salón para una fecha en particular 
7. Listar los ingresos (parciales y totales) entre dos fechas (ordenados cronológicamente) indicando monto y a qué evento corresponde..
8. Mostrar calendario semanal y/o Mensual con los espacios ya ocupados o libres
9. Escribir el algoritmo principal con el menú de opciones que invoca a cada funcionalidad del sistema

## Funcionamiento 

### 1. Tecnologías y lenguajes utilizados
A continuación se listan brevemente las tecnologías que componen el proyecto:

- **Python 3.11** — Lenguaje principal del backend.
- **Flask** — Framework web para manejar rutas, autenticación, ORM, etc.
- **Blueprints Flask** — Modularización de rutas en distintos módulos (auth, eventos, ingresos, cuentas).
- **SQLAlchemy** — ORM para interactuar con la base de datos.
- **SQLite** — Base de datos utilizada en modo desarrollo.
- **Jinja2** — Motor de plantillas utilizado para generar las vistas HTML.
- **Bootstrap 5** — Framework CSS utilizado para maquetado y estilos.
- **Docker & Docker Compose** — Para contenerización de la aplicación y despliegue consistente.
- **HTML, CSS, JavaScript** — Lenguajes base para la parte visual del proyecto.

---

### 2. Archivo principal de inicio
El archivo que actúa como punto de entrada de la aplicación es:

```
run.py
```

Este archivo crea la aplicación Flask, registra los blueprints y ejecuta el servidor.

---

### 3. Inicio rápido (Quick Start)
Para levantar el proyecto rápidamente utilizando Docker Compose:

#### ▶️ Levantar la aplicación
Ejecutar desde la raíz del proyecto:
```bash
sudo docker compose up --build
```
Esto construirá la imagen y levantará el servidor.

#### 🌐 Acceder a la aplicación
Una vez levantada, la aplicación queda disponible en:
```
http://localhost:5000
```

#### ⏹️ Detener la aplicación
Presionar:
```
Ctrl + C
```

---

### 4. Credenciales de acceso
El proyecto viene con un usuario administrador precargado. Para iniciar sesión:

**Correo:** `admin1@alberdi.com`  
**Contraseña:** `Admin1231!`

---


## 💻 Links de visualización del proyecto

*  [Página Figma](https://www.figma.com/design/hrvfGUexceJaGtax6VMRU6/Proyecto-Club-Alberdi?node-id=12-4&t=pnWBmWJJiUqSvoV8-0)
