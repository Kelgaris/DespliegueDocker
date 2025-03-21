#Usamos Node.js 16
FROM node:16-bullseye

#Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /server

#Copiamos solo archivos esenciales para instalar dependencias más rápido
COPY package.json package-lock.json ./

#Instalamos dependencias antes de copiar el resto del código
RUN npm install

#Ahora copiamos el resto del código, incluido el .env
COPY . .

#Expone el puerto de la API
EXPOSE 3000

#Inicia el servidor
CMD ["npm", "start"]
