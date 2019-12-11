--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Procedimiento para motificar el estatus de un vuelo

create or replace procedure p_actualizacion_vuelo is
    v_abordando_id number := 2;
    v_demorado_id number := 4;
    v_cancelado_id number := 5;
    v_atiempo_id number := 3;
    cursor cur_vuelos is
    select vuelo_id, fecha_salida, fecha_llegada, estatus_vuelo_id, sala_abordar
    from vuelo
    where to_char(fecha_salida, 'DD/MM/YYYY') = to_char(sysdate, 'DD/MM/YYYY');
    begin
    for r in cur_vuelos loop    
        if sysdate >= (r.fecha_salida-(15/1440)) 
        and r.estatus_vuelo_id <> v_abordando_id 
        and r.sala_abordar is not null then
            update vuelo 
            set estatus_vuelo_id = v_abordando_id
            where vuelo_id = r.vuelo_id;
        elsif sysdate >= (r.fecha_salida) 
        and r.estatus_vuelo_id <> v_demorado_id 
        and r.sala_abordar is null then
            update vuelo 
            set estatus_vuelo_id = v_demorado_id
            where vuelo_id = r.vuelo_id;
        elsif sysdate >= (r.fecha_salida+(15/1440)) 
        and r.estatus_vuelo_id <> v_cancelado_id 
        and r.sala_abordar is null then
            update vuelo 
            set estatus_vuelo_id = v_cancelado_id
            where vuelo_id = r.vuelo_id;
        else
            update vuelo 
            set estatus_vuelo_id = v_atiempo_id
            where vuelo_id = r.vuelo_id;
        end if;

    end loop;
end;
/
show errors