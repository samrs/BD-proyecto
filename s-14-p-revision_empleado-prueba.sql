--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para procedimiento de la revision de empleados

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Revisar insercion y contadores
Prompt ==================================================

insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 1, seq_numero_vuelo.nextval, 25, 
sysdate+(15/1440), to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'), 4, 3, 1);

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'JUAN', 'JIMENEZ', 'GONZALO', 2 , 'ADSDSADEWFA', 'OOJG770326HRFLMN09');

insert into tripulacion_vuelo
(tripulacion_vuelo_id, vuelo_id, empleado_id, puntos)
values
(seq_tripulacion_vuelo_id.nextval, seq_vuelo_id.currval, seq_empleado_id.currval, 100);

declare
    v_empleado_id number := seq_empleado_id.currval;
    v_count number;
    v_num_empleados_renum number;
    v_num_empleados_aten number;
    v_num_empleados_otros number;
begin
    dbms_output.put_line('Iniciando procedimiento');
    p_revision_empleado (v_num_empleados_renum, v_num_empleados_aten, v_num_empleados_otros);
    select count(*) into v_count
	from empleado_remunerado
	where empleado_remunerado_id = v_empleado_id;
	if v_count = 0 and v_num_empleados_renum = 0 then
		raise_application_error(-20001,
			'ERROR. No se inserto nada o no esta contando bien');
	end if;
    dbms_output.put_line(
        'Remunerados: '
        ||v_num_empleados_renum
        ||' Atencion: '
        ||v_num_empleados_aten
        ||' Otros: '
        ||v_num_empleados_otros
    );
	dbms_output.put_line('OK, Prueba 1 Exitosa.');
end;
/
rollback;