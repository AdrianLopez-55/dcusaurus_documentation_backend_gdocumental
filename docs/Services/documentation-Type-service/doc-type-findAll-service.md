---
id: findAll-documentation-type
title: findAll
sidebar_label: findAll
---

La funcion `findall` obtiene la lista de todos los tipos de documentacion registrados en la base da datos

## Codigo del servicio
```typescript
  async findAll() {
    return this.documentationTypeModel.find().exec();
  }
  ```

## Dependencias
Este servicio utiliza las siguientes dependencias:
  - `mongose`: Biblioteca para interactuar con MongoDB
  - `./schema/documentation-type.schema`: Esquema del tipo de documentacion definido en la aplicación.
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.

## Uso
```typescript
async findAll()
```

## Valor de retorno
La funcion devuelve una promesa, que se resuelve con el objeto que representa el tipo de documentacion añadido.

## Detalles de la implementacion
La funcion findAll realiza los siguientes pasos:

- Utiliza el metodo find para encontrar todos los tipos de documentacion guardados en la base de datos
- Retorna el objeto que representa los registros de los tipos de documentacion.


