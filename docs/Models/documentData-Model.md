---
id: document-data-model
title: Document Data Model
---

# Document Data Model

El modelo `Documents` representa los datos de un archivo en la base de datos.

## Propiedades

| Nombre         | Tipo     | Requerido | Descripción                   |
| -------------- | -------- | --------- | ----------------------------- |
| numberDocument       | string   | Sí        | Numero del documento            |
| title   		 | string   | Sí        | Nombre de referencia del documento   |
| authorDocument      | string   | Sí        | ci del autor del documento         |
| name           | string   | No        | nombre del autor del documento   |
| ci             | string   | No        | ci del autor del documento   |
| email          | string   | No        | email del autor del documento   |
| phone          | string   | No        | telefono del autor del documeto   |
| nacionality    | string   | No        | nacionalidad del autor del documento   |
| documentationType         | string   | Sí        | nombre del tipo de documentacion por asignar   |
| _idDocumentationType      | string   | NO       | id del tipo de documento seleccionado   |
| typeName       | string   | No        | nombre del tipo de documentacion seleccionada   |
| stateDocument       | string   | Sí        | Estado del documento   |
| Description      | string     | Sí        | descripcion del documento |
| fileRegister      | string     | Sí        | archivo para subir en base64 |
| _idFile      | string     | No        | id del archivo subido |
| fileName      | string     | No        | nombre del archivo subido |
| size      | mumber     | N        | tamaño del archivo subido |
| filePath      | string     | No        | ubicacion digital del archivo subido |
| status      | string     | NO        | status del archivo subido |
| category      | string     | No        | categoria del archivo subido |
| extension      | string     | No        | extension del archivo subido |
| active      | boolean     | Si        | estado del documento |
| createAt      | Date     | Sí        | Fecha de creación del documento |
| updateAt      | Date     | Sí        | Fecha de actualizacion del documeto |
 


