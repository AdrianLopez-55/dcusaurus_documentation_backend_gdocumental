# Usar una imagen base de Node.js
FROM node:19.5.0-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto a la imagen
COPY package*.json ./
COPY . .

# Instalar las dependencias del proyecto
RUN NODE_ENV=development npm i

# Compilar el proyecto
RUN npm run build

# Exponer el puerto 8086
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]