---
id: get-documentatio-type-by-name-documentation-type
title: getDocumentatioTypeByName
sidebar_label: getDocumentatioTypeByName
---

La funcion `getDocumentatioTypeByName` obtiene un tipo de documentacion registrado en la base de datos por su nombre.

## Codigo del servicio
```typescript
  async getDocumentatioTypeByName(
    typeName: string,
  ): Promise<DocumentationType | null> {
    const documentationType = this.documentationTypeModel
      .findOne({ typeName })
      .exec();
    return documentationType;
  }
  ```

  ## Dependencias
  Este servicio utiiza las siguientes dependencias:
  - `mongose`: Biblioteca para interactuar con MongoDB
  - `./schema/documentation-type.schema`: Esquema del tipo de documentacion definido en la aplicación.
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.

  ## Uso
  ```typescript
  async getDocumentatioTypeByName(
    typeName: string,
  ): Promise<DocumentationType | null>
  ```

  ## Parametros
  ```typescript
  - typeName(string): El nombre del tipo de documentacion enviado por el cliente.
  ```

  ## Valor de retorno
  La funcion devuelve una promesa, qu se resuelve con el objeto que representa el tipo de documentación obtenido

  ## Detalles de la implementacion
  La funcion getDocumentatioTypeByName realiza los siguientes pasos:

  - Utilizar el metodo findOne para encontrar un tipo de documentacion especifica mediante su nombre
  - Retorna el objeto que representa el tipo de documentación encontrada.