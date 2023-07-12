---
id: app-controller
title: AppController
sidebar_label: AppController
---

Controlador principal de la aplicación.

## Importaciones

```ts
import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';
```

## Decorador
```ts
@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}
```

## Metodo: `getHello()`
Maneja solicitudes GET en la ruta raiz ("/") de la aplicacion y devuelve saludo/

## Deocrador 
```ts
@Get()
```

## Firma del metodo
```ts
getHello(): string {
  return this.appService.getHello();
}
```

Este metodo utiliza servicio `appService` para obtener un saludo llamando al metodo `getHello()` del servicio

## Observaciones
Este controlador se encarga de manejar las solicitudes GET en la ruta raíz y utiliza el servicio AppService para obtener un saludo que se devuelve como respuesta.