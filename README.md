# Yes No App

Una aplicación de chat interactiva construida con Flutter que responde automáticamente a tus preguntas de "Sí" o "No" utilizando la API de [yesno.wtf](https://yesno.wtf/).

## 📱 Descripción

Esta aplicación simula un chat con una persona ("My Love") que contesta automáticamente cuando le envías una pregunta (cualquier mensaje que termine con `?`). La respuesta siempre es un "Yes" (Sí), "No", o "Maybe" (Tal vez), acompañada de un GIF divertido.

### ✨ Características Principales
- **Chat Interactivo**: Envía mensajes y recibe respuestas automáticas.
- **Respuestas Inteligentes**: Detección automática del signo de interrogación `?` para activar la respuesta.
- **Scroll Automático**: El chat se desplaza automáticamente al último mensaje recibido.
- **Diseño Moderno**: Utiliza Material Design 3 con un tema de colores personalizado.
- **Gestión de Estado**: Implementada con el patrón Provider para una gestión eficiente y reactiva.
- **Arquitectura Limpia**: Separación de responsabilidades en capas (Presentación, Dominio, Infraestructura).

---

## 🛠 Tecnologías Utilizadas

- **[Flutter](https://flutter.dev/)**: Framework principal para el desarrollo de la UI.
- **[Provider](https://pub.dev/packages/provider)**: Para la gestión del estado de la aplicación (`ChatProvider`).
- **[Dio](https://pub.dev/packages/dio)**: Cliente HTTP para realizar peticiones a la API.
- **[Intl](https://pub.dev/packages/intl)** (Implícito): Para manejo de fechas y localización si fuera necesario.

---

## 📂 Estructura del Proyecto

El proyecto sigue una arquitectura limpia y organizada:

```text
lib/
├── config/                 # Configuraciones globales
│   ├── helpers/            # Clases de ayuda y utilidades (e.g., GetYesNoAnswer)
│   └── theme/              # Configuración de temas y estilos (AppTheme)
├── domain/                 # Lógica de negocio pura y definiciones
│   └── entities/           # Entidades del dominio (Message)
├── infrastructure/         # Implementación de acceso a datos
│   └── models/             # Modelos de datos para mapeo de API (YesNoModel)
├── presentation/           # Capa de UI
│   ├── providers/          # Gestores de estado (ChatProvider)
│   ├── screens/            # Pantallas de la aplicación (ChatScreen)
│   └── widgets/            # Widgets reutilizables (Burbujas de chat, Campo de texto)
└── main.dart               # Punto de entrada de la aplicación
```

---

## 🚀 Cómo Ejecutar

1.  **Clonar o descargar el proyecto**.
2.  **Instalar dependencias**:
    Abre tu terminal en la carpeta del proyecto y ejecuta:
    ```bash
    flutter pub get
    ```
3.  **Ejecutar la aplicación**:
    Selecciona tu dispositivo o emulador y corre:
    ```bash
    flutter run
    ```

---

## 🧩 Detalles de Implementación

### Gestión de Estado (ChatProvider)
El `ChatProvider` es el corazón de la aplicación. Gestiona:
- La lista de mensajes (`messageList`).
- El controlador del scroll (`chatScrollController`).
- La lógica para enviar mensajes (`sendMessage`) y recibir respuestas (`herReply`).

### Temas (AppTheme)
La clase `AppTheme` permite cambiar fácilmente el esquema de colores de la aplicación. Por defecto utiliza Material 3 (`useMaterial3: true`) y ofrece una paleta de colores seleccionable por índice.

---

## 📝 Notas
Este proyecto fue desarrollado como parte del curso de Flutter: "Cero a Experto".
