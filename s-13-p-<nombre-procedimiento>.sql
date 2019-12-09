--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: 

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
for r in cur_empleado loop    
    if r.puntos_totales >= v_num_remuneracion then
        insert into empleado_remunerado
        (empleado_id, nombre, apellido_paterno, puntos_totales)
        values 
        (r.empleado_id, r.nombre, r.apellido_paterno, r.puntos_totales)
        v_num_empleados_renum := v_num_empleados_renum + 1;
    elsif r.puntos_totales >= v_num_atencion then
        v_num_empleados_aten := v_num_empleados_aten + 1;
        if r.puesto_id = (
            select puesto_id 
            from puesto
            where nombre = 'JEFE DE SOBRECARGOS'
        )
        update empleado set puesto_id = 
            (select puesto_id 
            from puesto
            where clave = 'SOBRECARGOS')
        where empleado_id = r.empleado_id;
    else 
        v_num_empleados_otros := v_num_empleados_otros + 1;
    end if;
end loop;
p_num_empleados_renum := v_num_empleados_renum
p_num_empleados_aten := v_num_empleados_aten
p_num_empleados_otros := v_num_empleados_otros
end;
/
show errors