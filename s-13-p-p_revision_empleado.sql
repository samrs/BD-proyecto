--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Procedimiento almacena empleados respecto a sus puntos totales

-- table: empleado_remunerado
create table empleado_remunerado(
    empleado_id number(10, 0) not null,
    apellido_paterno varchar2(38) not null,
    nombre varchar2(38) not null,
    puntos_totales number(10, 0) not null,
    constraint empleado_pk primary key (empleado_id)
);

create or replace procedure p_revision_empleado (p_num_empleados_renum out number,
p_num_empleados_aten out number, p_num_empleados_otros out number) is
v_num_remuneracion number:=500;
v_num_atencion number:=10;
v_num_empleados_aten:=0;
v_num_empleados_renum:=0;
v_num_empleados_otros:=0;
cursor cur_empleado is
select em.empleado_id, em.nombre, em.apellido_paterno, em.puesto_id
sum(tv.puntos) as puntos_totales
from empleado em, tripulacion_vuelo tv
group by em.empleado_id, em.nombre, em.apellido_paterno, em.puesto_id;
begin 
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