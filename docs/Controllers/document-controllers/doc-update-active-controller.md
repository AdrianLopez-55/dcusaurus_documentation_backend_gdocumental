---
id: registry-document-update-active-controller
title: Registry Document Update Active by ID Controller
---

# Registry Document Update Controller

El controlador de actualizacion de documentos que estan en estado inactivos maneja la actualizacion de registros documentales que se encuentren en un estado de activo "false" a "true", es decir, volverlos a activar para su uso.

## Rutas

| Método | Ruta                | Descripción                |
| ------ | ------------------- | -------------------------- |
| PUT   | /documents:id/active       | Actualizar elemeto por ID     |

## Endpoints

### PUT /documents/:id

Vuelve a activar un registro documental por su ID.

#### Parametros de ruta

| Nombre | Descripción             | Ejemplo                       |
| ------ | ----------------------- | ----------------------------- |
| id     | ID del registro documental          | 1647a69d038e92df93fb8b36a     |

#### Respuestas

| Estado HTTP                  | Descripción                        |
| ---------------------------- | ---------------------------------- |
| 200 OK                       | 	document re-active correctly  |

