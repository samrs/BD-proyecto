--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 01/12/2019
--@Descripción: Creacion de tablas temporales

create global temporary table aeronave_temporal (
    aeronave_id number(10,0) not null,
    matricula varchar2(10) not null,
    modelo varchar2(50) not null,
    especificaciones_pdf varchar2(40) not null,
    pasajeros_ordinarios number(3,0) not null,
    pasajeros_discapacitados number(3,0) not null,
    pasajeros_vip number(3,0) not null,
    num_bodegas number(5,0) not null,
    ancho_bodega number(5,0) default 5,
    alto_bodega number(5,0) default 5,
    capacidad_carga number(10,2) not null
) on commit preserve rows;

declare
cursor cur_aeronave is
    select ae.aeronave_id, ae.matricula, ae.modelo, ae.especificaciones_pdf,
    co.pasajeros_ordinarios, co.pasajeros_discapacitados, co.pasajeros_vip,
    ca.num_bodegas, ca.ancho_bodega, ca.alto_bodega, ca.capacidad_carga
    from aeronave ae
    join comercial co
    on co.aeronave_id = ae.aeronave_id
    join carga ca
    on ca.aeronave_id = ae.aeronave_id
    where ae.es_carga = 1
    and ae.es_comercial = 1;
begin
    for r in cur_aeronave loop
        insert into aeronave_temporal(aeronave_id, matricula, especificaciones_pdf, 
        pasajeros_ordinarios, pasajeros_discapacitados, pasajeros_vip, num_bodegas,
        capacidad_carga) 
        values(r.aeronave_id, r.matricula, r.especificaciones_pdf, 
        r.pasajeros_ordinarios, r.pasajeros_discapacitados, r.pasajeros_vip, r.num_bodegas,
        r.capacidad_carga);
    end loop;
end;
/

select * from aeronave_temporal;