# Usa una imagen base de Airflow
FROM apache/airflow:2.7.1

# Copia el script de inicialización al contenedor
COPY init_airflow.py /opt/airflow/init_airflow.py

# Opcionalmente, instala paquetes adicionales si es necesario
USER airflow
RUN pip install --no-cache-dir psycopg2-binary
USER airflow
