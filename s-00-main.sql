--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
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
    where username = 'RR_PROY_ADMIN';
    if v_count > 0 then
        dbms_output.put_line('Eliminando usuario existente');
        execute immediate 'drop user rr_proy_admin cascade';
        execute immediate 'drop user rr_proy_invitado cascade';
        execute immediate 'drop role rol_admin';
        execute immediate 'drop role rol_invitado';
    else
        dbms_output.put_line('No existe usuario');
    end if;
end;
/
show errors

@@s-01-usuarios.sql
@@s-02-entidades.sql
@@s-03-tablas-temporales.sql
@@s-04-tablas-externas.sql
@@s-05-secuencias.sql
@@s-06-índices.sql
@@s-07-sinonimos.sql
@@s-08-vistas.sql
@@s-09-carga-inicial.sql
@@s-10-consultas.sql
@@s-11-tr-auditoria_asiento.sql
@@s-11-tr-hist_status.sql
@@s-11-tr-aeropuerto_log.sql
--@@s-12-tr-auditoria_asiento-prueba.sql
--@@s-12-tr-hist_status-prueba.sql
--@@s-12-tr-aeropuerto_log-prueba.sql
@@s-13-p-actualizacion_vuelo.sql
@@s-13-p-revision_empleado.sql
--@@s-14-p-actualizacion_vuelo-prueba.sql
--@@s-14-p-revision_empleado-prueba.sql
@@s-15-fx-cache_aumento_sueldo.
@@s-15-fx-obtener_matricula_aero.sql
@@s-15-fx-obtener_rfc.sql
--@@s-16-fx-cache_aumento_sueldo-prueba.sql
--@@s-16-fx-obtener_rfc-prueba.sql
--@@s-16-fx-obtener_matricula_aero-prueba.sql
@@s-17-lob-cargar_foto_empleado.sql
--@@s-18-lob-cargar_foto_empleado-prueba.sql
@@resultados-proyecto-final.sql