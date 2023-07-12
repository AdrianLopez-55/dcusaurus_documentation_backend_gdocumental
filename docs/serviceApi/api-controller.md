---
id: api-controller
title: ApiController
sidebar_label: ApiController
---

Controlador de la API.

## Importaciones

```ts
import { Body, Controller, Post, Req, Res } from '@nestjs/common';
import { Response, Request } from 'express';
import { ApiService } from './api.service';
import { LoginCentralAuthDTO } from './api.dto';
import { ApiTags } from '@nestjs/swagger';
```

## Decorador
```ts
@Controller('api')
@ApiTags('Validate Token')
export class ApiController {
  constructor(private apiService: ApiService) {}
```

## Ruta
- Ruta base: api
- Etiqueta de Swagger: Validate Token

## Metodo `loginCentral()`

Gestiona las solicitudes POST en la ruta api/login-central para autenticar y obtener un token central.

## Decorador

```ts
@Post('login-central')
```

## Firma del metodo
```ts
async loginCentral(
  @Req() req: Request,
  @Res() res: Response,
  @Body() loginCentralAuthDTO: LoginCentralAuthDTO,
) {
  try {
    console.log(loginCentralAuthDTO);
    const response = await this.apiService.loginAuthCentral(
      loginCentralAuthDTO,
    );
    console.log('token enviado con exito');
    res.send(response);
    res.status(200).send(response.data);
  } catch (error) {
    console.log(error);
    throw error;
  }
}
```

Este método maneja las solicitudes POST en la ruta api/login-central para autenticar y obtener un token central. Toma los siguientes parámetros:
- `req`: Objeto `Request` de Express.
- `res`: Objeto `Response` de Express.
- `loginCentralAuthDTO`: Objeto `LoginCentralAuthDTO` (DTO de autenticación central) que se pasa en el cuerpo de la solicitud.

El método envía el objeto loginCentralAuthDTO a través del servicio apiService para autenticar y obtener una respuesta. Luego, envía la respuesta al cliente y devuelve el estado de la respuesta como 200.