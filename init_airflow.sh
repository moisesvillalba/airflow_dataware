#!/bin/bash

# Salida de comandos
set -e

# Configurar AIRFLOW_HOME (si es necesario)
export AIRFLOW_HOME=/opt/airflow

# Inicializar la base de datos
airflow db init

# Crear un usuario administrador
airflow users create -u admin -p admin -f Admin -l User -r Admin -e moisesvillalba@gmail.com

# Iniciar el servidor web
exec airflow webserver
