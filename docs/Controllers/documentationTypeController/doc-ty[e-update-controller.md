---
id: documentation-type-update-controller
title: Documentation Type Update Controller
---

# Documentation type Update Controller

El controlador de actualizacion de un tipo de documento maneja el pedido de actualizat un tipo de documento por su id.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| PUT   | /documentationType/:id   | actualiza tipo de documentacion por su id     |

## Endpoints

### PUT /documentationType/:id

actualiza un tipo de documentacion por su id


#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id     | id del tipo de documento          | jldjflaskjfj     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	document type update correctly |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		//nuevos datos del tipo de documentacion
	}
]

