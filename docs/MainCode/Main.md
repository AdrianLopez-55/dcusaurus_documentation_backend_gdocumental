---
id: main-ts
title: main.ts
sidebar_label: main.ts
---

El archivo `main.ts` es el punto de entrada de la aplicación NestJS. Se encarga de crear la aplicación y configurar diferentes aspectos como filtros, middlewares y la documentación Swagger.

## Dependencias

El archivo `main.ts` utiliza las siguientes dependencias:

- `@nestjs/core`: Biblioteca principal de NestJS.
- `./app.module`: Módulo principal de la aplicación.
- `@nestjs/swagger`: Biblioteca para generar la documentación Swagger.
- `./config/configuration`: Archivo de configuracion para el uso de las variables de entorno.
- `express`: Framework para usar peticiones HTTP a diferentes URL.
- `fs`: Biblioteca para generar archivo swagger.json.


## Uso

El archivo `main.ts` sigue el siguiente flujo de ejecución:

1. Importa las dependencias necesarias, incluyendo el módulo principal de la aplicación (`AppModule`) y el archivo de configuración de variables de entorno (`./config/configuration`).
2. Define una función asincrónica llamada `bootstrap`.
3. Dentro de la función `bootstrap`, se crea una instancia de la aplicación utilizando `NestFactory.create` y se asigna a la constante `app`.
4. Define el tamaño de los archivos que podra recibir la apliación siendo de limite 10mb con la expresion `express.json({ limit: '10mb' })`
5. Se crea una instancia de `DocumentBuilder` de `@nestjs/swagger` para configurar la documentación Swagger. Se establece el título, la descripción, la versión y se añade una etiqueta.
6. Se crea el documento Swagger utilizando `SwaggerModule.createDocument` pasando la aplicación (`app`) y la configuración (`config`) como parámetros. El resultado se asigna a la constante `document`.
7. Se genera el archivo `swagger.json` con `writeFileSync`.
8. Se configura la ruta de la documentación Swagger utilizando `SwaggerModule.setup` pasando la aplicación (`app`), la ruta base (`'api'`) y el documento Swagger (`document`).
9. Se inicia el servidor de la aplicación utilizando `app.listen(process.env.PORT)`, donde `process.env.PORT_APPLICATION` es el puerto obtenido de las variables de entorno.
10. Imprime el puerto de la aplicación en la consola.

Para ejecutar la aplicación, se llama a la función `bootstrap` al final del archivo.

Ten en cuenta que este archivo asume la existencia de otros archivos y dependencias relacionadas con el funcionamiento de la aplicación NestJS.