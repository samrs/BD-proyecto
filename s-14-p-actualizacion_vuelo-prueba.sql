--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para procedimiento que actualiza el estatus de un vuelo

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Actualizar vuelo a Abordando
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 1, seq_numero_vuelo.nextval, 25, 
sysdate+(15/1440), to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 1);

declare
    v_vuelo_id number := seq_vuelo_id.currval;
    v_count number;
begin
    dbms_output.put_line('Iniciando procedimiento');
    p_actualizacion_vuelo();
    select count(*) into v_count
	from vuelo
	where estatus_vuelo_id = 2
    and vuelo_id = v_vuelo_id;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se actualizo el vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 1 Exitosa.');
end;
/

Prompt =================================================
Prompt Prueba 2.
Prompt Actualizar vuelo a Demorado
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 2, seq_numero_vuelo.nextval, null, 
sysdate, to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 1);

declare
    v_vuelo_id number := seq_vuelo_id.currval;
    v_count number;
begin
    dbms_output.put_line('Iniciando procedimiento');
    p_actualizacion_vuelo();
    select count(*) into v_count
	from vuelo
	where estatus_vuelo_id = 4
    and vuelo_id = v_vuelo_id;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se actualizo el vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 2 Exitosa.');
end;
/

Prompt =================================================
Prompt Prueba 3.
Prompt Actualizar vuelo a Cancelado
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 2, seq_numero_vuelo.nextval, null, 
sysdate-(15/1440), to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 4);

declare
    v_vuelo_id number := seq_vuelo_id.currval;
    v_count number;
begin
    dbms_output.put_line('Iniciando procedimiento');
    p_actualizacion_vuelo();
    select count(*) into v_count
	from vuelo
	where estatus_vuelo_id = 5
    and vuelo_id = v_vuelo_id;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se actualizo el vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 3 Exitosa.');
end;
/

Prompt =================================================
Prompt Prueba 4.
Prompt Actualizar vuelo a A Tiempo
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 2, seq_numero_vuelo.nextval, null, 
sysdate+(20/1440), to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 1);

declare
    v_vuelo_id number := seq_vuelo_id.currval;
    v_count number;
begin
    dbms_output.put_line('Iniciando procedimiento');
    p_actualizacion_vuelo();
    select count(*) into v_count
	from vuelo
	where estatus_vuelo_id = 3
    and vuelo_id = v_vuelo_id;
	if v_count = 0 then
		raise_application_error(-20001,
			'ERROR. No se actualizo el vuelo');
	end if;
	dbms_output.put_line('OK, Prueba 4 Exitosa.');
end;
/
rollback;