# Usamos la imagen base oficial que querías usar
FROM thingsboard/tb-gateway:3.7-stable

# Creamos la carpeta de configuración por si acaso
RUN mkdir -p /thingsboard_gateway/config

# Copiamos TUS archivos de configuración dentro de la imagen
# Esto "harnesea" (hardcodes) la config para que funcione directo en Easypanel
COPY tb_gateway.yaml /thingsboard_gateway/config/tb_gateway.yaml
COPY opcua.json /thingsboard_gateway/config/opcua.json

# El contenedor ya sabe cómo iniciarse solo, no hace falta CMD
