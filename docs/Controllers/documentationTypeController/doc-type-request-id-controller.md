---
id: documentation-type-reques-id-controller
title: Documentation Type Request ID Controller
---

# Documentation Type Request id Controller

El controlador de obtencion de un tipo de documento maneja el pedido de ver un tipo de documento por su ID.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documentationType/:id      | encontrar tipo de documentacion por su ID     |

## Endpoints

### POST /documentationType/:id

Encuentra un tipo de documentacion por su IDs

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id     | ID del tipo de documento          | adfdjfjfkdhfjdhfjd     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	document type find correctly |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		//Detalles del tipo de documento
	}
]

