--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
--@Fecha creación: 08/12/2019
--@Descripción: Consulta de datos

create table consulta_1 as
select em.empleado_id, em.nombre, em.apellido_paterno, em.puesto_id,
sum(tv.puntos) as puntos_totales
from empleado em, tripulacion_vuelo tv
group by em.empleado_id, em.nombre, em.apellido_paterno, em.puesto_id
having sum(tv.puntos) > 100;

create table consulta_2 as
select ae.matricula, ac.pasajeros_ordinarios, ac.pasajeros_vip,
ac.pasajeros_discapacitados
from aeronave ae
natural join aeronave_comercial ac
where ae.modelo = 'EMB-190';

create table consulta_3 as
select v.numero_vuelo, v.sala_abordar, v.fecha_salida,
ae.matricula
from vuelo v
where to_char(v.fecha_salida, 'MM/YYYY') >= '01/2010'
union
select v.numero_vuelo, v.sala_abordar, v.fecha_salida,
ae.matricula
from vuelo v
where to_char(v.fecha_salida, 'MM/YYYY') <= '12/2010'

create table consulta_4 as
select tp.clave, tp.descripcion, tp.indicaciones,
p.peso, p.folio
from tipo_paquete tp
left join paquete p
on tp.tipo_paquete_id = p.tipo_paquete_id;

create table consulta_5 as
select * from pasajero
where fecha_nacimiento <=to_date('890627','yymmdd')
intersect
select * from pasajero
where apellido_paterno = 'OLMOS';

select * from aeronave_temporal;

select * from vuelo_ext;

select * from v_paquete_vuelo;