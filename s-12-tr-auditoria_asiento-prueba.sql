--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para trigger que valida que ningun empleado cambie el asiento de un pasajero

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Modificando el asiento del pasajero 2
Prompt ==================================================

update pasajero_vuelo
set asiento = 1
where pasajero_id = 2;

Prompt Validando  Inserción en auditoria_asiento

declare
	v_count number;
begin
	select count(*) into v_count
	from auditoria_asiento
	where pasajero_id = 2
    and asiento_nuevo = 1;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se encontró registro en auditoria_asiento');
	end if;
	dbms_output.put_line('OK, Prueba 1 Exitosa.');

end;
/

Prompt =================================================
Prompt Prueba 2.
Prompt Intentando eliminar un asiento
Prompt =================================================
declare
	v_codigo number;
	v_mensaje varchar2(1000);
begin 
	delete from pasajero_vuelo
	where pasajero_id = 2;
exception
	when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    dbms_output.put_line('Codigo:  ' || v_codigo);
    dbms_output.put_line('Mensaje: ' || v_mensaje);
    if v_codigo = -20011 then
    	dbms_output.put_line('OK, prueba 2 Exitosa.');
    else
    	dbms_output.put_line('ERROR, se obtuvo excepción no esperada');
    	raise;
    end if;
end;
/
Prompt =================================================
Prompt Prueba 3.
Prompt Otra vez modificar un asiento
Prompt =================================================
declare
	v_codigo number;
	v_mensaje varchar2(1000);
begin 
    update pasajero_vuelo
    set asiento = 1
    where pasajero_id = 2;
exception
	when others then
    v_codigo := sqlcode;
    v_mensaje := sqlerrm;
    dbms_output.put_line('Codigo:  ' || v_codigo);
    dbms_output.put_line('Mensaje: ' || v_mensaje);
    if v_codigo = -20010 then
    	dbms_output.put_line('OK, prueba 3 Exitosa.');
    else
    	dbms_output.put_line('ERROR, se obtuvo excepción no esperada');
    	raise;
    end if;
end;
/

Prompt Prueba concluida, Haciendo Rollback para limpiar la BD.
rollback;