---
id: inactiverTypeDocument-documentation-type
title: InactiverTypeDocument
sidebar_label: inactiverTypeDocument
---

La funcion `inactiverTypeDocument` inactiva un tipo de documetacion de la base de datos.

## Codigo del servicio
```typescript
  async inactiverTypeDocument(id: string, activeDocumentType: boolean) {
    const typeDocument: DocumentationTypeDocument =
      await this.documentationTypeModel.findById(id);
    typeDocument.activeDocumentType = false;
    await typeDocument.save();
    return typeDocument;
  }
  ```

## Dependencias
Este servicio utilza las siguietes dependencias:
- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documentation-type.schema`: Esquema del archivo definido en la aplicación

## Uso

```typescript
async inactiverTypeDocument(id: string, activeDocumentType: boolean)
```

## Parametros
```typescript
- id(string): El ID del tipo de documentacion para poder ser encontrado
- activeDocumentType(boolean): El dato de activo para convertirlo a false
```

## Valor de retorno
La funcion devuelve una promesa, que se resuelve con el objeto que representa el tipo de documentacion a inactivar

## Detalles de la implementacion
La funcion activerTypeDocument realiza los siguientes pasos:

- Encuantra el tipo de documentacion por su ID para convertir su estado a false
- Si el tipo de documentacion no se encuentra, se lanza un error
- Si ocurre algun error durante el proceso de acticacion del tipo de documentacion, se lanza una excepcion y se lanza hacia arriba.