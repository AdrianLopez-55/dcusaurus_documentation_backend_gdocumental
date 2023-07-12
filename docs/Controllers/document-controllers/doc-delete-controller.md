---
id: registry-document-request-delete-controller
title: Registry Document Request Delete Controller
---

# Registry Document Request Delete Controller

El controlador de eliminacion de los documentos maneja la eliminacion de registros documentales al convertirlos en eetado de inactivos.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| DELETE   | /documents/:id/inactive   | Obtener documents activos     |

## Endpoints

### DELETE /documents/:id/inactive

Convierte un documento en estado inactivo

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| ID   | ID del documento           | djfodsajfdsajdflkhdf    |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	documents 	
document converted to inactive successfully |
| 404 Not Found                     |
document not found or not exist |


