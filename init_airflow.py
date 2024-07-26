# -*- coding: utf-8 -*-
from airflow import settings
from airflow.utils.db import create_session
from airflow.cli.commands import db_command
from airflow.utils.session import provide_session
from airflow.security import roles
from airflow.security.manager import SecurityManager
from sqlalchemy.orm import sessionmaker

@provide_session
def init_db(session=None):
    """
    Inicializa la base de datos de Airflow aplicando las migraciones.
    """
    db_command.migrate()  # Actualizar esquema de la base de datos

@provide_session
def create_user(session=None):
    """
    Crea un usuario admin si no existe en la base de datos.
    """
    sm = SecurityManager()
    admin_role = session.query(roles.Role).filter_by(name='Admin').first()
    if not admin_role:
        # Crear el rol 'Admin'
        admin_role = roles.Role(name='Admin')
        session.add(admin_role)
        session.commit()

    user = session.query(sm.user_model).filter_by(username='admin').first()
    if not user:
        # Crear el usuario admin
        user = sm.user_model(
            username='admin',
            email='moisesvillalba@gmail.com',
            first_name='Admin',
            last_name='User',
            is_active=True,
            roles=[admin_role]
        )
        user.set_password('admin')  # Establecer la contraseña
        session.add(user)  # Agregar el usuario a la sesión
        session.commit()

if __name__ == '__main__':
    init_db()
    create_user()
