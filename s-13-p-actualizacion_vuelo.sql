--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Procedimiento para notificar el estatus de un vuelo

create or replace procedure p_actualizacion_vuelo (p_num_vuelos_buenos out number,
    p_num_vuelos_cancelados out number, p_num_vuelos_demorados out number) is
    v_num_vuelos_buenos number:=0;
    v_num_vuelos_cancelados number:=0;
    v_num_vuelos_demorados number:=0;
    cursor cur_vuelos is
    select vuelo_id, fecha_salida, fecha_llegada, estatus_vuelo_id, sala_abordar
    from vuelo
    where to_char(fecha_salida, 'MM/YYYY') = to_char(sysdate, 'MM/YYYY');
    begin
    for r in cur_vuelos loop    
        if sysdate >= (r.fecha_salida-(15/1440)) and r.sala_abordar is not null then
            update vuelo set estatus_vuelo_id = 
                (select estatus_vuelo_id 
                from estatus_vuelo
                where clave = 'ABORDANDO')
            where vuelo_id = r.vuelo_id;
            v_num_vuelos_buenos := v_num_vuelos_buenos + 1;
        elsif sysdate >= (r.fecha_salida) and r.sala_abordar is null then
            update vuelo set estatus_vuelo_id = 
                (select estatus_vuelo_id 
                from estatus_vuelo
                where clave = 'DEMORADO')
            where vuelo_id = r.vuelo_id;
            v_num_vuelos_demorados := v_num_vuelos_demorados + 1;
        elsif sysdate >= (r.fecha_salida+(15/1440)) and r.sala_abordar is null then
            update vuelo set estatus_vuelo_id = 
                (select estatus_vuelo_id 
                from estatus_vuelo
                where clave = 'CANCELADO')
            where vuelo_id = r.vuelo_id;
            v_num_vuelos_cancelados := v_num_vuelos_cancelados + 1;
        else
            update vuelo set estatus_vuelo_id = 
                (select estatus_vuelo_id 
                from estatus_vuelo
                where clave = 'A TIEMPO')
            where vuelo_id = r.vuelo_id;
        end if;

    end loop;
    p_num_vuelos_buenos := v_num_vuelos_buenos;
    p_num_vuelos_cancelados := v_num_vuelos_cancelados;
    p_num_vuelos_demorados := v_num_vuelos_demorados;
end;
/
show errors