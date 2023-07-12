---
id: registry-document-request-all-controller
title: Registry Document Request All Controller
---

# Registry Document Request All Controller

El controlador de obtencion de todos los documentos maneja la obtencion de registros documentales en su totalidad sin importar su estado.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents   | Obtener documents     |

## Endpoints

### GET /documents

Obtiene lista de registros documentales al completo.

#### Parametros de filtro

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| numberDocument   | buscar por numero de documento           | DOC-001    |
| title     | busca por el titulo del registro          | Gastos     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	documents find correctly |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		//Detalles de registro 1
	}
	{
		//Detalles de registro 
	}
]
