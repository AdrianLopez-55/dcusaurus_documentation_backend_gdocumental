---
id: registry-document-request-id-controller
title: Registry Document Request ID Controller
---

# Registry Document Request ID Controller

El controlador de obtencion por ID de documentos maneja la obtencion de registros documentales mediante sus IDs.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents/:id      | Obtener document     |

## Endpoints

### GET /documents/:id

Obtiene lista de registros documentales por sus IDs

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id   | id del registro documental          | fjp894rupe9fh984uriqo398ph4    |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	documents find correctly |
| 403 Forbidden                       | 		
document forbiden, document not use now |
| 404 Not Found                       | 		
document not found or not exist |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		//Detalles de registro 1
	}
]
