---
id: app-module
title: AppModule
sidebar_label: AppModule
---

Módulo principal de la aplicación.

## Importaciones

```jsx
import { Module, NestModule, MiddlewareConsumer } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ApiModule } from './ServiceApi/api.module';
import { ConfigModule } from '@nestjs/config';
import { DocumentsModule } from './documents/documents.module';
import { MongooseModule } from '@nestjs/mongoose';
import { PassportModule } from '@nestjs/passport';
import { HttpModule } from '@nestjs/axios';
import { PersonalModule } from './personal/personal.module';
import { PersonalController } from './personal/personal.controller';
import { PersonalService } from './personal/personal.service';
import configuration from './config/configuration';
import getConfig from './config/configuration';
import { MulterModule } from '@nestjs/platform-express';
import { PermissionsModule } from './permissions/permissions.module';
import { OrganizationChartModule } from './organization-chart/organization-chart.module';
import { DocumentationTypeModule } from './documentation-type/documentation-type.module';
```

## Decorador
```ts
@Module({
  imports: [
    ApiModule,
    ConfigModule.forRoot({
      isGlobal: true,
      load: [configuration],
    }),
    DocumentsModule,
    MongooseModule.forRoot(getConfig().mongodb), //process.env.MONGO_URI, {dbName: process.env.DB_NAME}),
    PassportModule,
    HttpModule,
    PersonalModule,
    MulterModule.register({
      limits: {
        fileSize: 10485760,
      },
    }),
    PermissionsModule,
    OrganizationChartModule,
    DocumentationTypeModule,
  ],
  controllers: [AppController, PersonalController],
  providers: [AppService, PersonalService],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {}
}
```

## Observaciones
Este módulo es el módulo principal de la aplicación y se encarga de la configuración global y la importación de otros módulos y controladores.

### Importaciones
- `ApiModule`: Módulo de API.
- `ConfigModule`: Módulo de configuración global.
- `DocumentsModule`: Módulo de documentos.
- `MongooseModule`: Módulo de Mongoose para la conexión a MongoDB.
- `PassportModule`: Módulo de autenticación Passport.
- `HttpModule`: Módulo HTTP para las solicitudes HTTP.
- `PersonalModule`: Módulo de personal.
- `MulterModule`: Módulo de Multer para la gestión de archivos.
- `PermissionsModule`: Módulo de permisos.
- `OrganizationChartModule`: Módulo de gráfico de organización.
- `DocumentationTypeModule`: Módulo de tipo de documentación.

## Controladores
- `AppController`: Controlador principal de la aplicación.
- `PersonalController`: Controlador de personal.

## Provedores
- `AppService`: Servicio principal de la aplicación.
- `PersonalService`: Servicio de personal.

