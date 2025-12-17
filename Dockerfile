FROM thingsboard/tb-gateway:latest

# Crear directorios de configuración
RUN mkdir -p /thingsboard_gateway/config

# Copiar nuestros archivos de configuración
COPY tb_gateway.yaml /thingsboard_gateway/config/tb_gateway.yaml
COPY opcua.json /thingsboard_gateway/config/opcua.json

# El comando de inicio ya viene en la imagen base
