---
id: registry-document-request-active-controller
title: Registry Document Request Active Controller
---

# Registry Document Request Active Controller

El controlador de obtencion de activos de los documentos maneja la obtencion de registros documentales que estan en el estado de activo.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents/active   | Obtener documents activos     |

## Endpoints

### GET /documents/active

Obtiene lista de registros documentales con estado activo

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
