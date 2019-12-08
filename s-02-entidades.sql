--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 01/12/2019
--@Descripción: Creacion de tablas y restricciones

-- table: aeronave
create table aeronave(
    aeronave_id number(10,0) not null,
    matricula varchar2(10) not null,
    es_carga number(1,0) not null,
    es_comercial number(1,0) not null,
    modelo varchar2(50) not null,
    especificaciones_pdf varchar2(40) not null,
    constraint aeronave_pk primary key (aeronave_id),
    constraint ae_es_carga_es_comercial_chk 
    check ((es_carga,es_comercial) in ((1,0),(0,1),(1,1)))
);
-- table: comercial
create table comercial(
    aeronave_id number(10,0) not null,
    pasajeros_ordinarios number(3,0) not null,
    pasajeros_discapacitados number(3,0) not null,
    pasajeros_vip number(3,0) not null,
    pasajeros_total as ( pasajeros_ordinarios + pasajeros_discapacitados + pasajeros_vip) virtual,
    constraint comercial_pk primary key (aeronave_id),
    constraint co_aeronave_id_fk foreign key (aeronave_id)
    references aeronave(aeronave_id)
);
-- table: carga
create table carga(
    aeronave_id number(10,0) not null,
    num_bodegas number(5,0) not null,
    ancho_bodega number(5,0) default 5,
    alto_bodega number(5,0) default 5,
    capacidad_carga number(10,2) not null,
    constraint carga_pk primary key (aeronave_id),
    constraint ca_aeronave_id_fk foreign key (aeronave_id)
    references aeronave(aeronave_id)
);
-- table: pasajero 
create table pasajero(
    pasajero_id number(10,0) not null,
    nombre varchar2(40) not null,
    apellido_paterno varchar2(40) not null,
    apellido_materno varchar2(40) null,
    email varchar2(40) null,
    fecha_nacimiento date not null,
    curp varchar2(18) not null,
    constraint pasajero_pk primary key (pasajero_id),
    constraint pa_curp_uk unique (curp)
);
-- table: vuelo 
create table vuelo(
    vuelo_id number(40,0) not null,
    aeronave_id number(10,0) not null,
    numero_vuelo number(10,0) not null,
    sala_abordar number(2,0) null,
    fecha_salida date not null,
    fecha_llegada date not null,
    aeropuerto_destino_id number(10,0) not null,
    aeropuerto_origen_id number(10, 0) not null,
    estatus_vuelo_id number(10,0) not null,
    constraint vuelo_pk primary key (vuelo_id),
    constraint vu_aeronave_id_fk foreign key (aeronave_id)
    references aeronave(aeronave_id),
    constraint vu_aeropuerto_destino_id_fk foreign key (aeropuerto_destino_id)
    references aeropuerto(aeropuerto_id),
    constraint vu_aeropuerto_origen_id_fk foreign key (aeropuerto_origen_id)
    references aeropuerto(aeropuerto_id),
    constraint vu_estatus_vuelo_id_fk foreign key (estatus_vuelo_id)
    references estatus_vuelo(estatus_vuelo_id)
);
-- table: aeropuerto
create table aeropuerto(
    aeropuerto_id number(10,0) not null,
    clave varchar2(40) not null,
    nombre varchar2(40) not null,
    latitud number(10,7) not null,
    longitud number(10,7) not null,
    activo number(1,0) not null,
    constraint aeropuerto_pk primary key (aerpuerto_id)
); 
-- table: tripulacion_vuelo 
create table tripulacion_vuelo(
    tripulacion_vuelo_id number(10,0) not null,
    puntos number(3, 0) not null,
    empleado_id number(10,0) not null,
    vuelo_id number(40, 0) not null,
    constraint tripulacion_vuelo_pk primary key (tripulacion_vuelo_id),
    constraint tv_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id),
    constraint tv_empleado_id_fk foreign key (empleado_id)
    references empleado(empleado_id),
    constraint tv_puntos_chk check (puntos >= 0 and puntos <= 100)
);
-- table: empleado 
create table empleado(
    empleado_id number(10, 0) not null,
    jefe_id number(10, 0) null,
    foto blob null,
    apellido_paterno varchar2(40) not null,
    apellido_materno varchar2(40) not null,
    puesto_id number(10,0) not null,
    nombre varchar2(40) not null,
    rfc varchar2(13) not null,
    curp varchar2(18) not null,
    constraint empleado_pk primary key (empleado_id),
    constraint em_jefe_id_fk foreign key (jefe_id)
    references empleado(empleado_id),
    constraint em_puesto_id_fk foreign key (puesto_id)
    references puesto(puesto_id)
);
-- table: puesto 
create table puesto(
    puesto_id number(10,0) not null,
    clave varchar2(40) not null,
    nombre varchar2(40) not null,
    descripcion varchar2(100) not null,
    sueldo_mensual number(5,0) not null,
    constraint puesto_pk primary key (puesto_id)
);
-- table: direccion_internet 
create table direccion_internet(
    direccion_internet_id number(10,0) not null,
    url varchar2(100) not null,
    empleado_id number(10, 0) not null,
    constraint direccion_internet_pk primary key (direccion_internet_id),
    constraint di_empleado_id_fk foreign key (empleado_id)
    references empleado(empleado_id)
);
-- table: pasajero_vuelo 
create table pasajero_vuelo(
    pasajero_vuelo_id number(10,0) not null,
    folio_pase_abordar varchar2(40) null,
    asiento number(3,0) not null,
    atencion varchar2(2000) not null,
    se_presento number(1,0) not null,
    pasajero_id number(10,0) not null,
    vuelo_id number(40,0) not null,
    constraint pasajero_vuelo_pk primary key (pasajero_vuelo_id),
    constraint pv_pasajero_id_fk foreign key (pasajero_id)
    references pasajero(pasajero_id),
    constraint pv_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id)    
);
-- table: pase_abordar 
create table pase_abordar(
    pase_abordar_id number(40,0) not null,
    fecha_impresion date not null,
    vuelo_id number(40,0) not null,
    pasajero_vuelo_id number(10,0) not null,
    constraint pase_abordar_pk primary key (pase_abordar_id),
    constraint pa_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id),
    constraint pv_pasajero_vuelo_id_fk foreign key (pasajero_vuelo_id)
    references pasajero(pasajero_id)
); 
-- table: paquete 
create table paquete(
    paquete_id number(40,0) not null,
    peso number(10,2) not null,
    folio varchar2(18) not null,
    tipo_paquete_id number(10,0) not null,
    constraint paquete_pk primary key (paquete_id),
    constraint pa_tipo_paquete_id_fk foreign key (tipo_paquete_id)
    references tipo_paquete(tipo_paquete_id)
);
-- table: tipo_paquete 
create table tipo_paquete(
    tipo_paquete_id number(10,0) not null,
    clave varchar2(40) not null,
    descripcion varchar2(100) not null,
    indicaciones varchar2(100) not null,
    constraint tipo_paquete_pk primary key (tipo_paquete_id)
);
-- table: paquete_vuelo 
create table paquete_vuelo(
    paquete_vuelo_id number(40,0) not null,
    vuelo_id number(40,0) not null,
    paquete_id number(40,0) not null,
    constraint paquete_vuelo_pk primary key (paquete_vuelo_id),
    constraint pv_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id),
    constraint pv_paquete_id_fk foreign key (paquete_id)
    references paquete(paquete_id)       
);
-- table: maleta 
create table maleta(
    numero number(3,0) not null,
    pasajero_vuelo_id number(10, 0) not null,
    peso number(10,2) not null,
    constraint maleta_pk primary key (numero, pasajero_vuelo_id),
    constraint ma_pasajero_vuelo_id_fk foreign key (pasajero_vuelo_id)
    references pasajero_vuelo(pasajero_vuelo_id)       
);
-- table: estatus_vuelo 
create table estatus_vuelo(
    estatus_vuelo_id number(10,0) not null,
    descripcion varchar2(100) not null,
    clave varchar2(40) not null,
    constraint estatus_vuelo_pk primary key (estatus_vuelo_id)
);
-- table: historico_estatus_vuelo 
create table historico_estatus_vuelo(
    historico_estatus_vuelo_id number(10,0) not null,
    fecha_estatus date  not null,
    estatus_vuelo_id number(10,0) not null,
    vuelo_id number(40,0) not null,
    constraint historico_estatus_vuelo_pk primary key (historico_estatus_vuelo_id),
    constraint hev_estatus_vuelo_id_fk foreign key (estatus_vuelo_id)
    references estatus_vuelo(estatus_vuelo_id),
    constraint hev_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id)
);
-- table: ubicacion 
create table ubicacion(
    vuelo_id number(40,0) not null,
    fecha date default sysdate,
    latitud  number(10,7) not null,
    longitud number(10,7) not null,
    vuelo_id number(40,0) not null,
    constraint ubicacion_pk primary key (vuelo_id),
    constraint ub_vuelo_id_fk foreign key (vuelo_id)
    references vuelo(vuelo_id)
);