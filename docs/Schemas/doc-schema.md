---
id: file-schema
title: File Schema
---

# Documents Schema

El schema `Documents` representa la estructura de un documento la base de datos.

## Propiedades

| Nombre         | Tipo           | Requerido | Descripción                                               |
| -------------- | -------------- | --------- | --------------------------------------------------------- |
| numberDocument       | string   | Sí        | Numero del documento                                        |
| title    		 | string         | Sí        | titulo de referencia del documento                               |
| authorDocument      | string    | Sí        | ci del autor del documento                                     |
| documentationType   | string    | Sí        | tipo del documento                               |
| stateDocument       | string    | Sí        | stado del documento                |
| documentDestinations         | string         | Si        | destino del documento           |
| description       | string   | Sí        | descripcion del documento |
| fileRegister      | string           | Si        | archivo para el documento a subir en base64 |
| active      | boolean           | No        | estado del documento por defecto es "active" |
| createdAt      | Date           | No        | Fecha de creación del documento (valor por defecto: fecha actual) |
| updateAt      | Date           | No        | Fecha de actualizacion del documento (valor por defecto: fecha actual) |

