--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
--@Fecha creación: 01/12/2019
--@Descripción: Creacion de usuarios y roles 

create or replace directory tmp_dir as '/tmp/bases';
create or replace directory data_dir as '/tmp/data_dir';

prompt Creando usuario rr_proy_admin, password: admin
prompt cambiar al ingresar
create user rr_proy_admin identified by admin
quota unlimited on users
password expire;
Prompt creando al usuario rr_proy_invitado
create user rr_proy_invitado identified by invitado;

Prompt creando roles
create role rol_admin;
grant create session, create table, create view, create synonym, create public synonym,
create sequence, create trigger, create procedure, create type to rol_admin;
grant read, write on directory tmp_dir to rol_admin;
grant read on directory data_dir to rol_admin;
create role rol_invitado;
grant create session, create synonym, create public synonym to rol_invitado;

Prompt Asignar el rol rol_admin a rr_proy_admin
grant rol_admin to rr_proy_admin;
Prompt Asignar el rol rol_invitado a rr_proy_invitado
grant rol_invitado to rr_proy_invitado;
Prompt Conectar a usuario rr_proy_admin
connect rr_proy_admin;

!mkdir -p /tmp/bases
!chmod 777 /tmp/bases
!cp vuelo_ext.txt /tmp/bases
!mkdir -p /tmp/data_dir
!cp piloto.jpg /tmp/data_dir
!chmod 777 /tmp/data_dir
Prompt Listo!