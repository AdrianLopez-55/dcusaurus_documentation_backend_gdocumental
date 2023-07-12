---
id: regyster-document-findDocumentsInactive-service
title: Regyster Document FindDocumentsInactive Service
sidebar_label: Regyster Document FindDocumentsInactive Service
---

El servicio `findDocumentsInactive` se encarga de mostrar la lista de documentos registrados e inactivos en la base de datos.

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
import { PaginationDto } from 'src/common/pagination.dto';
import { DocumentDocument, Documents } from './schema/documents.schema';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';

@Injectable()
export class DocumentsService {
	constructor(
	@InjectModel(Documents.name) private readonly documentModel: Model<DocumentDocument>
	)

	async findDocumentsInactive(query: any): Promise<Documents[]>{
		return this.documentModel.find(query).sort({numberDocument: 1}).setOptions({sanitizeFilter: true}).exec();
	}
}
```

Luego, puedes llamar al método findDocumentsInactive de forma directa.

## Métodos
```typescript
findDocumentsInactive(query: any): Promise<Documents[]>
Lista los registros documentales que se encuentren es estado inactivo.
```

## Parámetros 
```typescript
findDocumentsInactive(query: any): Permite listar todos los registros documentales si estan inactivos.
Promise<Documents[]>: Una promesa que se resuelve con un mensaje de éxito si los registros documentales se encuentran correctamente
EXCEPCIONES:
Error: Se lanza un error si ocurre algún problema al tratar de encntrar el registro documental
```

## Detalles de la implementación
El método findDocumentsInactive realiza las siguientes acciones:

Utiliza el método find del modelo de documentos para encontrar solo los registros documentales con estado inactivo.
- Si no hay documentos registros retorna mensaje de vacio.
- Retorna un mensaje indicando que los documetos fueron encontrados correctamente
- Si ocurre algún error durante el proceso de muestra de los documentos registrados, se lanza una excepción y se lanza hacia arriba.
