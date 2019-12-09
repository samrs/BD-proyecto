--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Inicia toda la base

prompt Proporcionar el password del usuario sys:
connect sys as sysdba

--Permite la salida de mensajes a consula empleabo dbms_output.put_line
set serveroutput on
--Este bloque anómimo valida la existencia del usuario, si existe lo elimina.
declare
v_count number(1,0);
begin
select count(*) into v_count
from dba_users
where username = 'rr_proy_admin';
if v_count > 0 then
    dbms_output.put_line('Eliminando usuario existente');
    execute immediate 'drop user rr_proy_admin cascade';
    execute immediate 'drop user rr_proy_invitado cascade';
end if;
end;
/
@@s-01-usuarios.sql
@@s-02-entidades.sql
@@s-03-tablas-temporales.sql
@@s-04-tablas-externas.sql
@@s-05-secuencias.sql
@@s-06-índices.sql
@@s-07-sinonimos.sql
@@s-08-vistas.sql
@@s-09-carga-inicial.sql