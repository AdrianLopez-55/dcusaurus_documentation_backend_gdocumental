---
id: regyster-document-findAllPaginate-service
title: Regyster Document FindAllPaginate Service
sidebar_label: Regyster Document FindAllPaginate Service
---

El servicio `findAllPaginate` se encarga de mostrar la lista de documentos registrados y activados mediante paginación definida por el cliente.

## Dependencias

Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del registro documental definido en la aplicación
- `src/common/pagination.dto`: Esquema de la paginacion documental definido en la aplicación

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

	findAllPaginate( paginationDto: PaginationDto ) {
		const { limit = this.defaultLimit, offset = 0 } = paginationDto;
		return this.documentModel.find({active: true})
		  .limit( limit )
		  .skip( offset )
	}
}
```

Luego, puedes llamar al método findAllPaginate con el siguiente parametro:
paginationDto (limit: number, offset: number): Datos para la paginación del listado de registros documentales.

## Métodos
```typescript
findAllPaginate( paginationDto: PaginationDto )
Lista los registros documentales mediante paginación elegido por el cliente.
```

## Parámetros 
```typescript
findAllPaginate( paginationDto: PaginationDto ): Los datos en general para la paginacion de documentos
paginationDto(limit: number, offset: number): Datos dados por el cliente para controlar la paginacion de los registros documentales
EXCEPCIONES:
Error: Se lanza un error si ocurre algún problema al tratar de encntrar el registro documental
```

## Detalles de la implementación
El método findAllPaginate realiza las siguientes acciones:

Utiliza el método find del modelo de documentos para encontrar solo los registros documentales con estado activado y poniendo de parametros limit para el limite de muestra, skip para el salto de documentos.
- Si no hay documentos registros retorna mensaje de vacio.
- Retorna un mensaje indicando que los documetos fueron encontrados correctamente
- Si ocurre algún error durante el proceso de muestra de los documentos registrados, se lanza una excepción y se lanza hacia arriba.
