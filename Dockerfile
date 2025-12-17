# 1. Imagen base (Igual que en el compose)
FROM thingsboard/tb-gateway:3.7-stable

# 2. Reemplazo del volumen "tb-gw-config"
# En compose era: - tb-gw-config:/thingsboard_gateway/config
# En Dockerfile es:
RUN mkdir -p /thingsboard_gateway/config
COPY tb_gateway.yaml /thingsboard_gateway/config/tb_gateway.yaml

# 3. Reemplazo de los volúmenes de logs y extensiones
# Aunque no podemos "sacarlos" afuera fácilmente sin la opción de storage en Easypanel,
# podemos declarar que son volúmenes para que Docker los gestione internamente.
VOLUME ["/thingsboard_gateway/logs"]
VOLUME ["/thingsboard_gateway/extensions"]

# Listo. Al arrancar, tendrá la config cargada como si fuera un volumen.
