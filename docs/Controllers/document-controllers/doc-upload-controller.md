---
id: registry-document-upload-controller
title: Registry Document Upload Controller
---

# Registry Document Upload Controller

El controlador de reigstro de documentos maneja la subida de registros documentales a la API.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| POST   | /documents       | Registrar nuevo documento     |

## Endpoints

### POST /documents

Sube un nuevo registro documental a la API.

#### Encabezado de solicitud

| Nombre         | Descripción                    | Obligatorio | Valor predeterminado   |
| -------------- | ------------------------------ | ----------- | ---------------------- |
| access-control-allow-origin   | Control de acceso del origen | Sí          | *       |
| connection   | tipo de conexion de la solicitud | Sí          | keep-alive       |
| content-length   | Longitud del contenido | Sí          | 0       |
| Content-Type   | Tipo de contenido de la solicitud | Sí          | application/json       |
| Date   | Fecha con loa que hizo la solicitud | Sí          | Fecha actual       |
| etag   | validar la version mas reciente del registro solicitado | Sí          | dato hexadecimal       |

#### Cuespo de la solicitud

```json
{
  "title": "Resources from DataCenter",
  "ciPersonal": "8574898",
  "documentType": "Costos",
  "stateDocument": "Revision",
  "documentDestinations": "derecho",
  "description": "contract document registration for new staff. It is on revision",
  "file": "data:@file/jpeg;base64,/9jq"
}


