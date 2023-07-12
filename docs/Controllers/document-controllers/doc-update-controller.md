---
id: registry-document-update-controller
title: Registry Document Update by ID Controller
---

# Registry Document Update Controller

El controlador de actualizacion de documentos maneja la actualizacion de registros documentales a la API.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| PUT   | /documents:id       | Actualizar elemeto por ID     |

## Endpoints

### PUT /documents/:id

Actualiza un registro documental por su ID.

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id     | ID del registro documental          | 1647a69d038e92df93fb8b36a     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	document update correctly |
| 403 Forbidden              | 	document not use now                  |
| 404 Not Found                | 	document not found |

#### Ejemplo de solicitud

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