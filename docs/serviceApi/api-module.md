---
id: api-module
title: ApiModule
sidebar_label: ApiModule
---

Módulo de la API.

## Importaciones

```ts
import { Module } from '@nestjs/common';
import { ApiController } from './api.controller';
import { ApiService } from './api.service';
import { HttpModule } from '@nestjs/axios';
```

## Decorador
```ts
@Module({
  imports: [HttpModule],
  providers: [ApiService],
  controllers: [ApiController],
})
export class ApiModule {}
```

## Impotaciones
`HttpModule`: Módulo HTTP para las solicitudes HTTP.

## Controladores
`ApiController`: Controlador de la API.

## Proveedores
`ApiService`: Servicio de la API.