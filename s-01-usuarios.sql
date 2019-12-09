--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 01/12/2019
--@Descripción: Creacion de usuarios y roles 

prompt Proporcionar el password del usuario sys:
connect sys as sysdba
create or replace directory tmp_dir as '/tmp/bases';

prompt Creando usuario srs_proy_admin, password: admin
prompt cambiar al ingresar
create user srs_proy_admin identified by admin
quota unlimited on users
password expire;
Prompt creando al usuario srs_proy_invitado
create user srs_proy_invitado identified by invitado;

Prompt creando roles
create role rol_admin;
grant create session, create table, create view, create synonym, create public synonym,
create sequence, create trigger, create procedure, create type to rol_admin;
grant read, write on directory tmp_dir to rol_admin;
create role rol_invitado;
grant create session to rol_invitado;

Prompt Asignar el rol rol_admin a srs_proy_admin
grant rol_admin to srs_proy_admin;
Prompt Asignar el rol rol_invitado a srs_proy_invitado
grant rol_invitado to srs_proy_invitado;
connect srs_proy_admin;
Prompt Listo!