# Usamos la imagen base de Ubuntu
FROM ubuntu:latest

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Crear una carpeta para el proyecto
WORKDIR /app

# Copiar todos los archivos del directorio web al contenedor
COPY web/ /app/web/

# Instalar dependencias para ejecutar el servidor Node.js
RUN npm init -y && npm install express

# Exponer el puerto 80
EXPOSE 80

# Crear el servidor en Node.js para servir los archivos y el flag.txt
RUN echo "\
const express = require('express');\n\
const app = express();\n\
const path = require('path');\n\
\n\
app.use(express.static(path.join(__dirname, 'web')));\n\
\n\
app.get('/', (req, res) => {\n\
    res.sendFile(path.join(__dirname, 'web', 'index.html'));\n\
});\n\
\n\
app.get('/hidden/flag.txt', (req, res) => {\n\
    res.sendFile(path.join(__dirname, 'web', 'hidden', 'flag.txt'));\n\
});\n\
\n\
app.listen(80, () => {\n\
    console.log('Servidor corriendo en http://localhost');\n\
});\n\
" > /app/server.js

# Ejecutar el servidor cuando el contenedor se inicie
CMD ["node", "server.js"]
