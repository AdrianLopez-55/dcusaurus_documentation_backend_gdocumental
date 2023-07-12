---
id: get-document-version
title: getDocumentVersion
sidebar_label: getDocumentVersion
---

La funcion `getDocumentVersion` añade un tipo de documentación mediante su nombre.

## Codigo del servicio

```typescript  
  async getDocumentVersion(id: string, version: number): Promise<Documents> {
    const document = await this.documentModel
      .findOne({ _id: id, __v: version })
      .select('-__v')
      .lean()
      .exec();

    if (!document) {
      throw new NotFoundException('Versión del documento no encontrada');
    }

    return document;
  }
  ```

  ## Dependencias
  Este servicio utiliza las siguientes dependencias:

- `mongose`: Biblioteca para interactuar con MongoDB
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `./schema/documents.schema`: Esquema del documento definido en la aplicación

## Uso
```typescript
async getDocumentVersion(id: string, version: number): Promise<Documents>
```

## Parametros
```typescript
- id(string): el ID para identificar el documento
- version(umber): El número de version que se desea obtener
```

## Valor de retorno
La función devuelve una promesa que se resuelve con el objeto que representa el tipo de documentación añadido.

## Detalles de la implementación

La funcion getDocumentVersion realiza los siguientes pasos:
- Utiliza el ID del documento proporcionado para obtenerlo.
- Utiliza el numero de version para encontrar la version especifica del documento y mostrarlo.
- Retorna el objeto que representa la version buscada.