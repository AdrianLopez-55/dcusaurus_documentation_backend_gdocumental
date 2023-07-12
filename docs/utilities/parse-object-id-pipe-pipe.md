---
id: parse-objectid-pipe
title: ParseObjectIdPipe
sidebar_label: ParseObjectIdPipe
---

Pipe para transformar un valor en un ObjectId de mongoose.

## Importaciones

```jsx
import { PipeTransform, Injectable, BadRequestException } from '@nestjs/common';
import mongoose from 'mongoose';
```

## Decorador
```ts
@Injectable()
export class ParseObjectIdPipe implements PipeTransform<any, mongoose.Types.ObjectId> {
  transform(value: any): mongoose.Types.ObjectId {
    const validObjectId: boolean = mongoose.isObjectIdOrHexString(value);
    if (!validObjectId) {
      throw new BadRequestException('Invalid ObjectId');
    }
    return value;
  }
}
```

## Metodos
### Metodo `transform()`
Transforma un valor en un ObjectId de mongoose.

### Firma del metodo
```ts
transform(value: any): mongoose.Types.ObjectId {
  const validObjectId: boolean = mongoose.isObjectIdOrHexString(value);
  if (!validObjectId) {
    throw new BadRequestException('Invalid ObjectId');
  }
  return value;
}
```
Este método recibe un valor y verifica si es un ObjectId o una cadena hexadecimal válida. Si no es válido, se lanza una excepción de BadRequestException con el mensaje 'Invalid ObjectId'. Si es válido, se devuelve el valor.

## Observaciones
Este pipe se utiliza para transformar un valor en un ObjectId de mongoose, que es utilizado en la interacción con MongoDB. Si el valor proporcionado no es un ObjectId válido, se lanza una excepción de BadRequestException.