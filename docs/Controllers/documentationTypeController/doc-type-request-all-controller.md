---
id: documentation-type-reques-all-controller
title: Documentation Type Request All Controller
---

# Documentation Type Request All Controller

El controlador de obtencion de tdos tipo de documento maneja el pedido de ver todos los tipos de documentos.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documentationType     | encontrar todos los tipo de documentacion.     |

## Endpoints

### GET /documentationType

Encuentra todos los tipo de documentacion   |

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

