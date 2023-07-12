---
id: add-comment
title: addComment
sidebar_label: addComment
---

La función `addComment` añade un comentario a un documento identificado por su ID.

## Codigo del servicio
```typescript
  async addComment(id: string, comment: any) {
    let document: DocumentDocument = await this.documentModel.findById(id);
    document.comments.push(comment);
    document.save();
    return document;
  }
```
## Dependencias
- `mongose`: Biblioteca para interactuar con MongoDB
- `./schema/documents.schema`: Esquema del registro documental definido en la aplicación
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.


## Uso

```typescript
async addComment(id: string, comment: any): Promise<DocumentDocument>
```

## Parametros
```typescript
- id (string): El ID del documento al que se desea añadir el comentario.
- comment (any): El comentario que se desea agregar al documento.
```

## Valor de retorno
La función devuelve una promesa que se resuelve con el documento actualizado, representado por el tipo `DocumentDocument`.

## Detalles de la implementacion

La funcion `addComment` realiza las siguientes acciones

- Utiliza el ID proporcionado para buscar el documento correspondiente en la base de datos.
- Añade el comentario al arreglo de comentarios del documento.
- Guarda los cambios realizados en el documento.
- Devuelve el documento actualizado.