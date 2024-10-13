# Etapa 1: Construcción de la aplicación
FROM node:alpine AS build

WORKDIR /app

# Copiar los archivos de configuración del paquete
COPY package.json package-lock.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Construir la aplicación para producción
RUN npm run build

# Etapa 2: Servir la aplicación con Nginx
FROM nginx:alpine

# Copiar los archivos construidos al servidor Nginx
COPY --from=build /app/dist /usr/share/nginx/html

# Exponer el puerto en el que Nginx escuchará
EXPOSE 80

# Comando por defecto para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]