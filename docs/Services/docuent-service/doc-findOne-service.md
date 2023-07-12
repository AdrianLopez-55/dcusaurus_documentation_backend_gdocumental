---
id: regyster-document-findOne-service
title: Regyster Document FindOne Service
sidebar_label: Regyster Document FindOne Service
---

El servicio `findOne` se encarga de encontrar un registro documental de la base de datos mediante su ID.

## Dependencias

Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del registro documental definido en la aplicación

## uso

```typescript
import { 
	HttpException, 
	Injectable, 
	NotFoundException, 
	GatewayTimeoutException, 
	HttpStatus,
	BadRequestException
} from '@nestjs/common';
import { DocumentDocument, Documents } from './schema/documents.schema';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';

@Injectable()
export class DocumentsService {
	constructor(
	@InjectModel(Documents.name) private readonly documentModel: Model<DocumentDocument>
	)

	async findOne(id: string): Promise<Documents>{
		return this.documentModel.findOne({_id: id}).exec();
	}
}
```

Luego, puedes llamar al método findOne con el siguiente parametro:
id (tipo: string): El ID del documento que se desea encontrar.
El método devuelve una promesa que se resuelve con un mensaje indicando que el registro documental a sido encontrado correctamente.

## Métodos
```typescript
findOne(id: string)
Encuentra un registro documental de la base de datos mediante su ID.
```

## Parámetros 
```typescript
findOne(id: string): El ID del registro documental para encontrar.
Promise<Documents>: Una promesa que se resuelve con un mensaje de éxito si el registro documental se encuentra correctamente.
EXCEPCIONES:
Error: Se lanza un error si ocurre algún problema al tratar de encntrar el registro documental
```

## Detalles de la implementación
El método findOne realiza las siguientes acciones:

Utiliza el método findOne del modelo de documentos para encontrarlo por su ID.
- Si el documento no se encuentra, se lanza un error
- Retorna un mensaje indicando que el documento ha sido encontrado correctamente
- Si ocurre algún error durante el proceso de busqueda del documento registrado, se lanza una excepción y se lanza hacia arriba
