---
id: regyster-document-findAll-service
title: Regyster Document FindAll Service
sidebar_label: Regyster Document FindAll Service
---

El servicio `findAll` se encarga de mostrar la lista de todos los documentos registrados en la base de datos.

## Dependencias

Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del registro documental definido en la aplicación

## uso

```typescript
	async findAll(request: Request): Promise<Documents[]> {
		return this.documentModel.find(request.query).sort({numberDocument: 1}).setOptions({sanitizeFilter: true}).exec();
	}
```

Luego, puedes llamar al método findAll de forma directa.

## Parámetros 
```typescript
findAll(request: Request): Promise<Documents[]>: Permite listar todos los registros documentales.
Promise<Documents[]>: Una promesa que se resuelve con un mensaje de éxito si los registros documentales se encuentran correctamente
EXCEPCIONES:
Error: Se lanza un error si ocurre algún problema al tratar de encntrar el registro documental
```

## Detalles de la implementación
El método findAll realiza las siguientes acciones:

Utiliza el método find del modelo de documentos para encontrar solo los registros documentales.
- Si no hay documentos registros retorna mensaje de vacio.
- Retorna un mensaje indicando que los documetos fueron encontrados correctamente
- Si ocurre algún error durante el proceso de muestra de los documentos registrados, se lanza una excepción y se lanza hacia arriba.
