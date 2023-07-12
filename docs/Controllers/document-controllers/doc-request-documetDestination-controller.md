---
id: registry-document-request-documentDestination-controller
title: Registry Document Request Document Destination Controller
---

# Registry Document Request Destination Controller

El controlador de obtencion por destino de documentos maneja la obtencion de registros documentales mediante su IDs para saber sus destinos de flujo de trabajo.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| GET   | /documents/:id/documentDestination     | Obtener document     |

## Endpoints

### GET /documents/:id/documentDestination

Obtiene lista de registros documentales por sus IDs para saber sus destinos en el flujo de trabajo.

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id   | id del registro documental          | 64a58839361060481360cde0    |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	documents find correctly |

#### Ejemplo de respuesta (200 OK)

```json
[
	{
		 "documentDestinations": [
      {
        "id": "64a58839361060481360cde0",
        "name": "derecho"
      }
	}
]
