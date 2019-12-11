--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para procedimiento de insercion de foto

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Revisar actualizacion
Prompt ==================================================

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval, null, null, 'RAMIREZ', 'JIMENEZ', 'PEDRO', 2, 'OOJG7S326R6I', 'OOJG7703YIHBSLMN09');

declare
	v_empleado_id number := seq_empleado_id.currval;
    v_name_file varchar2(100) := 'piloto.jpg';
    v_count number;
begin 
    dbms_output.put_line('Iniciando procedimiento');
    p_cargar_foto_empleado(v_empleado_id, 'piloto.jpg');
    select count(*) into v_count
	from empleado
	where empleado_id = 1
    and foto is not null;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se inserto nada o no esta contando bien');
    else
    	dbms_output.put_line('OK, prueba 1 Exitosa.');
	end if;
end;
/
rollback;