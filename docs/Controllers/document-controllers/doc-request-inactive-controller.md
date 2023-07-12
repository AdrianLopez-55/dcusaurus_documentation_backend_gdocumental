---
id: registry-document-request-inactive-controller
title: Registry Document Request Inactive Controller
---

# Registry Document Request Inactive Controller

El controlador de obtencion de inactivos de documentos maneja la obtencion de registros documentales que se encuentran en un estado inactivo.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents/inactive      | Obtener document inactivos     |

## Endpoints

### GET /documents/inactive

Obtiene lista de registros documentales que se encuentran en un estado inactivo

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
]
