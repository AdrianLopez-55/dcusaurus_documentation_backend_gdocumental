---
id: update-documentation-type
title: update
sidebar_label: update
---

La función `update` actualiza un tipo de documentación en la base de datos

## Codigo del servicio
```typescript
  async update(
    id: string,
    updateDocumentationTypeDto: UpdateDocumentationTypeDto,
  ) {
    return this.documentationTypeModel.findByIdAndUpdate(
      { _id: id },
      updateDocumentationTypeDto,
      { new: true },
    );
  }
  ```

  ## Dependencias
  Este servicio utiliza las siguientes dependencias:
  - `./dto/update-documentation-type.dto`: Dto para colocar los nuevos datos por el cliente
  - `@nestjs/mongoose`: Biblioteca para interactuar con la base de datos
  - `mongose`: Biblioteca para interactuar con MongoDB
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.

  ## Uso
  ```typescript
  async update(
    id: string,
    updateDocumentationTypeDto: UpdateDocumentationTypeDto,
  )
  ```

  ## Paramtros
  ```typescript
  - id(string): La ID del registro de tipo de documentacion
  - updateDocumentationTypeDto(data): Datos para actualizar un tipo de documentacion.
  ```

  ## Valor de retorno
  La funnción devuelve una promesa, que se resuelve con el objeto que representa el tipo de docucmentación actualizado.
## Detalles de la implementación
La función update realiza los siguientes pasos:

- Utiliza el metodo findByIdAndUpdate para econtrar la ID del tipo de documentación para actualizar.
- Retorna el obbjeto que representa el registro del tipo de documentacion actualizada.
