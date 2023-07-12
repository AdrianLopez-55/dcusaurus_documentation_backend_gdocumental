---
id: registry-document-request-version-controller
title: Registry Document Request Version by ID and Number Version Controller
---

# Registry Document Request Version Controller

El controlador de obtencion de una version de documentos maneja la obtencion de registros documentales mediante su ID y su numero de version especifica.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents:id/versions/:version      | Obtener document por ID y version     |

## Endpoints

### GET /documents/:id/versions/:version

Obtiene un registro documental por su ID y su version especifica.

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id     | ID del registro documental          | 1647a69d038e92df93fb8b36a     |
| version     | numero de version a encontrar          | 2     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	document encotrado correctly |
| 403 Forbidden              | 	document not use now                  |
| 404 Not Found                | 	document not found |
