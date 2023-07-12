---
id: update-registry-document
title: update registry document
sidebar_label: update
---

La funcion `update` actualiza un registro documental de la base de datos

## Depedencias
- `@nestjs/common`:Biblioteca de utilidades comunes de NestJS.
- `./dto/updateDocument.dto`: Dto con datos para crear un nuevo registro documental.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del registro documental deginido en la aplicacion.
- `mongoose`: Biblioteca para interactuar con MongoDB
- `@nestjs/axios`: Biblioteca de nestJS para relizar peticiones HTTP a servicio s externos
- `./dto/personal-result.dto`: Dto de resultado obtenido a realizar una peticion al servicio externo de personal.

## Uso
```typescript
async update(
    id: string,
    updateDocumentDTO: UpdateDocumentDTO,
  ): Promise<Documents>
```

## Parametros
```typescript
- id(string): El ID del registro documental por encontrar.
- updateDocumentDTO(data): Dto donde estan los datos necesarios para actualizar un registro documental
```

## Valor de retorno
La funcion devuelve una promesa que se resuelve con el documento actualizado, representado por el tipo `DocumentDocument`.

## Detalles de la implementacion

La funcion `update` realiza los siguientes pasos:

- Utiliza los datos de updateDocumentDTO para guardarlos.
- actualiza los datos guardados.
- Devuelve el documento actualizado