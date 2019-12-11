--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
--@Fecha creación: 07/12/2019
--@Descripción: Creacion de vistas

create or replace view v_impresion_pase_abordar
    as select pa.fecha_impresion, pv.folio_pase_abordar, pv.asiento,
    v.numero_vuelo, v.sala_abordar, v.fecha_salida, v.fecha_llegada
    from pase_abordar pa, pasajero_vuelo pv, vuelo v
    where pa.pasajero_vuelo_id = pv.pasajero_vuelo_id
    and pa.vuelo_id = v.vuelo_id;

create or replace view v_empleado_vuelo
    as select em.nombre, em.apellido_paterno, p.nombre as nombre_puesto,
    tv.puntos, v.numero_vuelo
    from empleado em, puesto p, tripulacion_vuelo tv, vuelo v
    where em.puesto_id = p.puesto_id
    and em.empleado_id = tv.empleado_id
    and tv.vuelo_id = v.vuelo_id;

create or replace view v_paquete_vuelo
    as select p.folio, p.peso, tp.clave, tp.descripcion, 
    tp.indicaciones, v.numero_vuelo, v.fecha_llegada
    from paquete p, tipo_paquete tp, paquete_vuelo pv, vuelo v
    where p.tipo_paquete_id = tp.tipo_paquete_id
    and p.paquete_id = pv.paquete_id
    and pv.vuelo_id = v.vuelo_id;