---
id: regyster-document-findDocumentsActive-service
title: Regyster Document FindDocumentsActive Service
sidebar_label: Regyster Document FindDocumentsActive Service
---

El servicio `findDocumentsActive` se encarga de mostrar la lista de documentos registrados y activados en la base de datos.

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

	async findDocumentsActive(query: any): Promise<Documents[]>{
		return this.documentModel.find(query).sort({numberDocument: 1}).setOptions({sanitizeFilter: true}).exec();
	}
}
```

Luego, puedes llamar al método findDocumentsActive de forma directa.

## Métodos
```typescript
findDocumentsActive(query: any): Promise<Documents[]>
Lista los registros documentales que se encuentren es estado activo.
```

## Parámetros 
```typescript
findDocumentsActive(query: any): Permite listar todos los registros documentales si estan activos.
Promise<Documents[]>: Una promesa que se resuelve con un mensaje de éxito si los registros documentales se encuentran correctamente
EXCEPCIONES:
Error: Se lanza un error si ocurre algún problema al tratar de encntrar el registro documental
```

## Detalles de la implementación
El método findDocumentsActive realiza las siguientes acciones:

Utiliza el método find del modelo de documentos para encontrar solo los registros documentales con estado activado.
- Si no hay documentos registros retorna mensaje de vacio.
- Retorna un mensaje indicando que los documetos fueron encontrados correctamente
- Si ocurre algún error durante el proceso de muestra de los documentos registrados, se lanza una excepción y se lanza hacia arriba.
