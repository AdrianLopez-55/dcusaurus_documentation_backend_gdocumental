---
id: add-ilestones
title: AddMIlestones
sidebar_label: addMilestones
---

La funcion `addMIlestones` añade un hito a un docuemto identificado por su ID

## Codigo del servicio

```typescript
  async addMilestones(id: string, milestone: any) {
    let document: DocumentDocument = await this.documentModel.findById(id);
    document.milestone.push(milestone);
    document.save();
    return document;
  }
  ```

  ## Dependencias
- `mongose`: Biblioteca para interactuar con MongoDB
- `./schema/documents.schema`: Esquema del registro documental definido en la aplicación
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.

# Uso
```typescript
async addMilestones(id: string, milestone: any)
```

## Parametros
```typescript
- id(string): El ID del documento al que se desea añadir el hito,
- milestone(any): El hito que se desea agregar al document.
```

## Valor de retorno
La función devuelve una promesa que se resuelve con el documento actualizado, representado por el tipo `DocumentDocument`.

## Detalles de la implementacion

La funcion `addMilestones` realiza las siguientes pasos:

- Utiliza el ID proporcionado para buscar el documento correspondiente en la base de datos.
- Añade el hito al arreglo de hitos del documento.
- Devuelve el documento actualizado.