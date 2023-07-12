---
id: create-documentation-type
title: create
sidebar_label: create
---

La función `create` crea un nuevo tipo de documentacion mediante un nombre.

## Codigo del servicio
```typescript
  async create(createDocumentationTypeDto: CreateDocumentationTypeDto) {
    const { typeName } = createDocumentationTypeDto;
    const existingdocumentatuoType = await this.documentationTypeModel
      .findOne({ typeName })
      .exec();
    if (existingdocumentatuoType) {
      throw new Error(
        'El título ya está en uso. No se permite la duplicación.',
      );
    }
    const newDocument = new this.documentationTypeModel(
      createDocumentationTypeDto,
    );
    return newDocument.save();
  }
  ```
  ## Dependencias
  Este servicio utiliza las siguientes dependencias:
  - `./dto/create-documentation-type.dto`: Dto de la creacion del nuevo tipo de documentacion.
  - `mongose`: Biblioteca para interactuar con MongoDB
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
  - `./schema/documentation-type.schema`: Esquema del tipo de documentacion definido en la aplicación.

  ## Uso 
  ```typescript
  async create(createDocumentationTypeDto: CreateDocumentationTypeDto)
  ```

  ## Parametros
  ```typescript
  - createDocumentationTypeDto(data): Datos para registrar un nuevo tipo de documentacion.
  ```

  ## Valor de retorno
  La funcion devuelve una promesa, que se resuelve con el objeto que representa el tipo de documentacion añadido.

  ## Detalles de la implementacion
  La funcion create realiza los siguientes pasos:

- Guarda los datos añadidos por el cliente para ponerlos al nuevo registro de tipo de documentacion.
- Retorna el objeto que representa el tipo de documentacion creado.

