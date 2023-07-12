---
id: api-service
title: ApiService
sidebar_label: ApiService
---

Servicio de la API.

## Importaciones

```jsx
import { Injectable } from '@nestjs/common';
import { HttpService } from '@nestjs/axios';
import { Observable } from 'rxjs';
import { AxiosResponse } from 'axios';
import { LoginCentralAuthDTO } from './api.dto';
```

## Decorador
```ts
@Injectable()
export class ApiService {
  private readonly apiSeguridad = process.env.API_CENTRAL;
  constructor(private readonly httpService: HttpService) {}
```

## Propiedades
`apiSeguridad`: URL de la API de seguridad obtenida desde la variable de entorno `API_CENTRAL`.

## Constructor
```ts
constructor(private readonly httpService: HttpService) {}
```

## Metodo `loginAuthCentral()`
Realiza una solicitud de autenticación central para verificar el token de la aplicación.

### Firma del metodo
```ts
async loginAuthCentral(loginCentralAuthDTO: LoginCentralAuthDTO) {
  try {
    const response = await this.httpService
      .post(`${this.apiSeguridad}/auth/verify-app-token`, loginCentralAuthDTO)
      .toPromise();
    console.log(response.data);
    return response.data;
  } catch (error) {
    throw error.response?.data;
  }
}
```

Este método toma un objeto loginCentralAuthDTO (DTO de autenticación central) y realiza una solicitud POST utilizando el httpService para verificar el token de la aplicación en la URL ${this.apiSeguridad}/auth/verify-app-token. Si la solicitud tiene éxito, se devuelve la respuesta. Si hay un error, se lanza una excepción con los datos de respuesta del error.