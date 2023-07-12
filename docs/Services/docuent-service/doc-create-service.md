---
id: create-registry-document
title: create registry document
sidebar_label: create
---

La funcion `create` crea un nuevo registro documental en la base de datos

## Depedencias
- `@nestjs/common`:Biblioteca de utilidades comunes de NestJS.
- `./dto/createDocument.dto`: Dto con datos para crear un nuevo registro documental.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del registro documental deginido en la aplicacion.
- `mongoose`: Biblioteca para interactuar con MongoDB
- `@nestjs/axios`: Biblioteca de nestJS para relizar peticiones HTTP a servicio s externos
- `./dto/personal-result.dto`: Dto de resultado obtenido a realizar una peticion al servicio externo de personal.

## Uso
```typescript
async create(createDocumentDTO: CreateDocumentDTO): Promise<Documents | any>
```

## Parametros
```typescript
- createDocumentDTO(data): Dto donde estan los datos necesarios para registrar un nuevo registro documental
```

## Valor de retorno
La funcion devuelve una promesa que se resuelve con el documento nuevo registrado, representado por el tipo `DocumentDocument`.

## Detalles de la implementacion

La funcion `create` realiza los siguientes pasos:

- Utiliza los datos de createDocumentDTO para guardarlos.
- Registra los datos guardados.
- Devuelve el documento registrado