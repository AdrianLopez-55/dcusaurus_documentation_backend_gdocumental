---
id: findAll-organitation-chart
title: findAll
sidebar_label: findAll
---

La función `findAll` obtiene la lista de todos los datos del microservicio externo del organigrama.

## Codigo del servicio
```typescript
 public async findAll(url: string): Promise<any> {
    try {
      const response = await axios.get(url);
      return response.data;
    } catch (error) {
      throw new Error('Error al obtener los datos de organization chart');
    }
  }
  ```

  ## 

  ## Dependencias
  Este servicio utiliza las siguientes dependencias:
  - `axios`: Biblioteca para realizar peticiones y llamadas al HTTP externo
  - `@nestjs/common`: Biblioteca de utilidades comunes de NestJS.

  ## Uso
  ```typescript
  public async findAll(url: string): Promise<any>
  ```

  ## Paraetros
  ```typescript
  - url(string): La url al microservicio externo del oganigrama.
  ```

  ## Valor de retorno
  La fundación devuelve una promesa, que se resuelve con el objeto que representa la lista del organigrama.

  ## Detalles de la implementacion
  La funcion findAll realiza los siguientes pasos:

  - Utiliza el método findAll para econtrar todos los datos de la lista del organigrama del microservicio externo.
  - Retorna el objeto que representa los registros del organigrama del microservicio externo
