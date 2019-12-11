--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para trigger que registra cambios de aeropuertos

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Insertar un nuevo vuelo con estatus
Prompt ==================================================

update aeropuerto
set activo = 0
where upper(nombre) like 'GENERAL%';

Prompt Validando inserción en historico_estatus_vuelo
declare
	v_count number;
begin
	select count(*) into v_count
	from aeropuerto_log;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se encontró registro en historico_estatus_vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 1 Exitosa.');
end;
/

Prompt Prueba concluida, Haciendo Rollback para limpiar la BD.
rollback;