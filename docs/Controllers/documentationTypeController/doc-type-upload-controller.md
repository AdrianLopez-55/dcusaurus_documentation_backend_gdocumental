---
id: documentation-type-upload-controller
title: Documentation Type Upload Controller
---

# Documentation Type Upload Controller

El controlador de subida de un tipo de documento maneja la subida de un tipo de documento nuevo.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| POST   | /documentation-type      | subir tipo de documento nuevo     |

## Endpoints

### POST /documentationType

Subir un tipo de documento nuevo

| Nombre         | Descripción                    | Obligatorio | Valor predeterminado   |
| -------------- | ------------------------------ | ----------- | ---------------------- |
| access-control-allow-origin   | Control de acceso del origen | Sí          | *       |
| connection   | tipo de conexion de la solicitud | Sí          | keep-alive       |
| content-length   | Longitud del contenido | Sí          | 0       |
| Content-Type   | Tipo de contenido de la solicitud | Sí          | application/json       |
| Date   | Fecha con loa que hizo la solicitud | Sí          | Fecha actual       |
| etag   | validar la version mas reciente del registro solicitado | Sí          | dato hexadecimal       |


#### Cuerpo de la solicitud

```json
{
  "typeName": "string"
}

