---
id: registry-document-request-pagination-controller
title: Registry Document Request Pagination Controller
---

# Registry Document Request Pagination Controller

El controlador de obtencion por paginacion de documentos maneja la obtencion de registros documentales mediante una paginacion enviada por el cliente.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents/pagination      | Obtener document por paginacion     |

## Endpoints

### GET /documents/paginacion

Obtiene lista de registros documentales por paginacion

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| offset   | desplaza una cantidad de datos           | 2     |
| limit     | limite de registros a mostrar          | 5     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	documents find correctly |
| 404 Not Found                | 	document not found |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		//Detalles de registro 1
	}
	{
		//Detalles de Registro 2
	}
]
