--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Compound trigger para actualizacion de paquetes
--Constantemente se activan y desactivan varios aeropuertos, es
--necesario almacenar en una tabla como van cambiando

create sequence seq_aeropuerto_log_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

-- table: aeropuerto
create table aeropuerto_log(
    aeropuerto_log_id number(10,0) not null,
    aeropuerto_id number(10,0) not null,
    clave varchar2(38) not null,
    nombre varchar2(38) not null,
    activo number(1,0) not null,
    fecha_actualizacion date,
    usuario_actualiza varchar2(38),
    constraint aeropuerto_log_pk primary key (aeropuerto_log_id)
); 

create or replace trigger aeropuerto_log_trigger
for update of activo on aeropuerto
compound trigger

type aero_actualizado_type is record (
aeropuerto_log_id aeropuerto_log.aeropuerto_log_id%type,
aeropuerto_id aeropuerto_log.aeropuerto_id%type,
clave aeropuerto_log.clave%type,
nombre aeropuerto_log.nombre%type,
fecha_actualizacion aeropuerto_log.fecha_actualizacion%type,
activo aeropuerto_log.activo%type,
usuario_actualiza aeropuerto_log.usuario_actualiza%type
);

type activo_list_type is table of aero_actualizado_type;

activo_list activo_list_type := activo_list_type();

before each row is

v_usuario varchar2(30) := sys_context('USERENV','SESSION_USER');
v_fecha date := sysdate;
v_index number;
begin

activo_list.extend;

v_index := activo_list.last;

activo_list(v_index).aeropuerto_log_id := seq_aeropuerto_log_id.nextval;
activo_list(v_index).aeropuerto_id := :new.aeropuerto_id;
activo_list(v_index).activo := :new.activo;
activo_list(v_index).nombre := :new.nombre;
activo_list(v_index).clave := :new.clave;
activo_list(v_index).fecha_actualizacion := v_fecha;
activo_list(v_index).usuario_actualiza := v_usuario;
end before each row;

after statement is
begin
forall i in activo_list.first .. activo_list.last
insert into aeropuerto_log(aeropuerto_log_id,aeropuerto_id,
activo,nombre,clave,fecha_actualizacion,usuario_actualiza)
values(activo_list(i).aeropuerto_log_id, activo_list(i).aeropuerto_id,
activo_list(i).activo,activo_list(i).nombre,activo_list(i).clave,
activo_list(i).fecha_actualizacion, activo_list(i).usuario_actualiza
);
end after statement;
end;
/
show errors;
