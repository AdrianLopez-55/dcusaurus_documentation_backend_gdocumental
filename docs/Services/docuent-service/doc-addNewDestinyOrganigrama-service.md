---
id: add-new-destiny-organigrama
title: addNewDestinyOrganigrama
sidebar_label: addNewDestinyOrganigrama
---

La funcion `addNewDestinyOrganigrama` añade un nuevo destino a un documento buscandolo por su nombre.

## Codigo del servicio
```typescript
  async addNewDestinyOrganigrama(id: string): Promise<any> {
    const allDataDocument = this.documentModel.findOne({ _id: id }).exec();
    const documentDestinationForData = (await allDataDocument)
      .documentDestinations;
    return documentDestinationForData;
  }
   ```

   ## Dependencias
- `@nestjs/mongoose`: Módulo de integración de NestJS para Mongoose.
- `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.- `mongose`: Biblioteca para interactuar con MongoDB

## Uso
```typescript
async addNewDestinyOrganigrama(id: string): Promise<any>
```

## Parametros
```typescript
- id (string): El ID del documento al que se desea añadir el destino.
```

## Valor de retorno
La función devuelve una promesa que se resuelve con el documento actualizado, representado por el tipo `DocumentModel`.

## Detalles de la implementacion
La funcion `addNewDestinyOrganigrama` realiza las siguientes acciones

- Utiliza el ID proporcionado para buscar el documento correspondiente en la base de datos.
- Añade el destino al arreglo de destinos del documento.
- Guarda los cambios realizados en el documento.
- Devuelve el documento actualizado.

