---
id: regyster-document-inactiver-service
title: Regyster Document inactiver Service
sidebar_label: Regyster Document inactiver Service
---

El servicio `inactiverDocument` se encarga de "Inactivar" los registros de documentos de la base de datos

## Dependencias

Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del archivo definido en la aplicación

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

	async inactiverDocument(id: string, active: boolean) {
	const document: DocumentDocument = await this.documentModel.findById(id);
	document.active = false;
	await document.save();
	return document;
	}
}
```

Luego, puedes llamar al método inactiverDocument con el siguiente parametro:
id (tipo: string): El ID del archivo que se desea inactivar.
El método devuelve una promesa que se resuelve con un mensaje indicando que el registro documental a sido inactivado correctamente.

## Métodos
```typescript
inactiverDocument(id: string, active: boolean)
Inactiva un registro documental de la base de datos
```

## Parámetros 
```typescript
inactiverDocument(id: string): El ID del registro documental a inactivar.
inactiverDocument(active: boolean): El estado de activo del registro documental encontrado
Error: Se lanza un error si ocurre algún problema al inactivar el registro documental
```

## Detalles de la implementación
El método inactiverDocument realiza las siguientes acciones:

Utiliza el método findById del modelo de documentos para encontrarlo por su ID.
Se utiliza la funcion document.active = false; para convertir su estado de activo a false.
Se utiliza el método document.save para guardar los cambios
- Si el documento no se encuentra, se lanza un error
- Retorna un mensaje indicando que el archivo ha sido eliminado correctamente
- Si ocurre algún error durante el proceso de inactivación del documento registrado, se lanza una excepción y se lanza hacia arriba
