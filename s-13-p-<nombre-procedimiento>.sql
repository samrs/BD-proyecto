--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Procedimiento para notificar el estatus de un vuelo


create or replace procedure p_revision_empleado (p_num_vuelos_buenos out number,
p_num_vuelos_cancelados out number, p_num_vuelos_retrasados out number) is
v_num_vuelos_buenos number:=0;
v_num_vuelos_cancelados number:=0;
v_num_vuelos_retrasados number:=0;
cursor cur_vuelos is
select vuelo_id, fecha_salida, fecha_llegada, estatus_vuelo_id
from vuelo
where to_char(fecha_salida, 'MM/YYYY') = to_char(sysdate, 'MM/YYYY')
begin 
to_date('25/12/2018 23:59:59','dd/mm/yyyy hh24:mi:ss')
for r in cur_vuelos loop    
    if r.fecha_salida  then

    elsif r.puntos_totales >= v_num_atencion then

    elsif 

    end if;
end loop;
p_num_empleados_renum := v_num_empleados_renum
p_num_empleados_aten := v_num_empleados_aten
p_num_empleados_otros := v_num_empleados_otros
end;
/
show errors