---
id: regyster-document-activer-service
title: Regyster Document Activer Service
sidebar_label: Regyster Document Activer Service
---

El servicio `activerDocument` se encarga de "Activar" los registros de documentos de la base de datos

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

	async activerDocument(id: string, active: boolean) {
	const document: DocumentDocument = await this.documentModel.findById(id);
	document.active = true;
	await document.save();
	return document;
	}
}
```

Luego, puedes llamar al método activerDocument con el siguiente parametro:
id (tipo: string): El ID del archivo que se desea activar.
El método devuelve una promesa que se resuelve con un mensaje indicando que el registro documental a sido activado correctamente.

## Métodos
```typescript
activerDocument(id: string, active: boolean)
Activa un registro documental de la base de datos
```

## Parámetros 
```typescript
activerDocument(id: string): El ID del registro documental para activar.
activerDocument(active: boolean): El estado de activo del registro documental encontrado
Error: Se lanza un error si ocurre algún problema al activar el registro documental
```

## Detalles de la implementación
El método activerDocument realiza las siguientes acciones:

Utiliza el método findById del modelo de documentos para encontrarlo por su ID.
Se utiliza la funcion document.active = true; para convertir su estado de activo a true.
Se utiliza el método document.save para guardar los cambios
- Si el documento no se encuentra, se lanza un error
- Retorna un mensaje indicando que el archivo ha sido reactivado correctamente
- Si ocurre algún error durante el proceso de activación del documento registrado, se lanza una excepción y se lnza hacia arriba
