# Usar la imagen base de Python 3.12.0-alpine
FROM python:3.12.0-alpine

# Copiar los archivos de la carpeta 'migration-agent' al contenedor
COPY migration-agent/ /app/

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar dependencias del sistema necesarias para compilar algunas librerías de Python
RUN apk add --no-cache gcc musl-dev python3-dev libffi-dev

# Copiar los archivos necesarios
#COPY requirements.txt requirements.txt
#COPY . .

# Instalar las dependencias
#RUN pip install --no-cache-dir -r requirements.txt

# Comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]

#  docker build -t migration-agent .
#  docker rm migration-agent
#  
#  docker run -d --name migration-agent  migration-agent
#  docker logs migration-agent