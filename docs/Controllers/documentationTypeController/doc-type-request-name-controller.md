---
id: documentation-type-reques-name-controller
title: Documentation Type Request Name Controller
---

# Documentation Type Request Name Controller

El controlador de obtencion de un tipo de documento maneja el pedido de ver un tipo de documento por su nombre.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documentationType/document-type/{name}      | encontrar tipo de documentacion por su nombre     |

## Endpoints

### POST /documentationType/document-type/{name}

Encuentra un tipo de documentacion por su nombre


#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| name     | nombre del tipo de documento          | Contratos     |

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

