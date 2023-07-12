---
id: add-documentation-type
title: addDocumentationType
sidebar_label: addDocumentationType
---

La función `addDocumentationType` añade un tipo de documentación mediante su nombre.

## Codigo del servicio

```typescript  
  async addDocumentationType(typeName: string): Promise<any> {
    const documentationType =
      await this.documentationTypeService.getDocumentatioTypeByName(typeName);
    return documentationType;
  }
```
## Dependencias

Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del archivo definido en la aplicación

## Uso

```typescript
async addDocumentationType(typeName: string): Promise<any>
Proveniente del servicio documentationtypeService
```

## Parametros
```typescript
typeName (string): El nombre del tipo de documentación que se desea añadir.
```

## Valor de retorno
La función devuelve una promesa que se resuelve con el objeto que representa el tipo de documentación añadido.

## Detalles de la implementacion

La funcion AddDocuentationType realiza las siguientes pasos:
- Utiliza el nombre del tipo de documentación proporcionado para obtener el tipo de documentación correspondiente utilizando el servicio documentationTypeService.
- Retorna el objeto que representa el tipo de documentación añadido.

