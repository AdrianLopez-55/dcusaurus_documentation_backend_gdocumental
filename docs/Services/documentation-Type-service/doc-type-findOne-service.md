---
id: findOne-documentation-type
title: findOne
sidebar_label: findOne
---

La funcion `findOne` obtiene un tipo de documentacion registrado en la base de datos.

## Codigo del servicio
```typescript
  async findOne(id: string): Promise<DocumentationType> {
    return this.documentationTypeModel.findOne({ _id: id }).exec();
  }
  ```

## Dependencias
Este servicio utiliza las siguietes dependencias:
  - `mongose`: Biblioteca para interactuar con MongoDB
  - `./schema/documentation-type.schema`: Esquema del tipo de documentacion definido en la aplicación.
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.
  - `@nestjs/mongoose`: Biblioteca de utlizades comunes de MongoDB

## Uso
```typescript
async findOne(id: string): Promise<DocumentationType>
```

## Paramtetros
```typescript
- id(string): El ID del tipo de documetacion por encontrar
```

## Valor de retorno
La funcion devuelve una promesa, que se resuelve con el objeto que representa el tipo de documentacion encontrado

## Valor de retorno
La funcion devuelve una promesa, que se resuelve con el objeto que representa el tipo de documentacion enontrado por el ID.

## Detalles de la implementacion
La funcion findOne realiza los siguientes pasos.

- Si el tipo de documentacion se ecuentra, retorna un mensaje indicando que ha sido encontrado correctamente.
- Si ocurre algún error durante el proceso de busqueda del tipo de documentacion registrado, se lanza una excepción y se lanza hacia arriba