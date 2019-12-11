--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para trigger que registra en historico

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Insertar un nuevo vuelo con estatus
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 1, seq_numero_vuelo.nextval, 25, to_date('05/05/2018 10:05','dd/mm/yyyy hh24:mi'), 
to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 1);

Prompt Validando inserción en historico_estatus_vuelo
declare
	v_count number;
    v_vuelo_id number := seq_vuelo_id.currval;
begin
	select count(*) into v_count
	from historico_estatus_vuelo
	where estatus_vuelo_id = 1
    and vuelo_id = v_vuelo_id;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se encontró registro en historico_estatus_vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 1 Exitosa.');
end;
/

Prompt =================================================
Prompt Prueba 2.
Prompt Actualizar estatus_vuelo
Prompt =================================================

Prompt Validando registros en historico_estatus_vuelo
declare
	v_count number;
    v_vuelo_id number := seq_vuelo_id.currval;
begin
    update vuelo
    set estatus_vuelo_id = 2
    where vuelo_id = v_vuelo_id;

	select count(*) into v_count
	from historico_estatus_vuelo
	where vuelo_id = v_vuelo_id;
	if v_count >= 2 then
        dbms_output.put_line('OK, Prueba 2 Exitosa.');
    else 
        raise_application_error(-20001,
		'ERROR. No se encontraron suficientes registros');
	end if;
end;
/
Prompt Prueba concluida, Haciendo Rollback para limpiar la BD.
rollback;