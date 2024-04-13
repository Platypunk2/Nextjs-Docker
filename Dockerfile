# Utiliza la imagen base de Node.js con LTS y Alpine
FROM node:lts-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala create-next-app globalmente
RUN npm install -g create-next-app

# Copia el archivo package.json y package-lock.json si existe
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos del proyecto
COPY . .

# Expone el puerto 3000 para acceder a la aplicación en el navegador
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "run", "dev"]
