---
id: app-service
title: AppService
sidebar_label: AppService
---

Servicio principal de la aplicación.

## Importaciones

```jsx
import { Injectable } from '@nestjs/common';
```

## Decorador

```js
@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World! from global get';
  }
  ```

## Método: getHello()
devuelve un salduo

## Firma del metodo
```ts
getHello(): string {
  return 'Hello World! from global get';
}
```
Este método devuelve una cadena de texto con el saludo "Hello World! from global get".

## Observaciones
Este servicio se utiliza en el controlador AppController para obtener el saludo que se devuelve en la respuesta a las solicitudes GET.