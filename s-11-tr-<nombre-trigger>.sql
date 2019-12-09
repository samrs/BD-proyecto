--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Compound trigger para actualizacion de sueldos
--Almacenar en una tabla los empleados a los que se les ha
--aumentado el sueldo

-- table: empleado_log 
create table empleado_log(
    empleado_log_id number(10,0) not null,
    jefe_id number(10,0) null,
    apellido_paterno varchar2(40) not null,
    apellido_materno varchar2(40) not null,
    puesto_id number(10,0) not null,
    nombre varchar2(40) not null,
    rfc varchar2(13) not null,
    curp varchar2(18) not null,
    sueldo_anterior number()
    constraint empleado_pk primary key (empleado_id),
    constraint em_jefe_id_fk foreign key (jefe_id)
    references empleado(empleado_id),
    constraint em_puesto_id_fk foreign key (puesto_id)
    references puesto(puesto_id)
);

create or replace trigger producto_precio_trigger
for update of precio on producto
compound trigger
--declaraciones globales y comunes
--declara un objeto type para guardar los valores
-- que se van a insertar en producto_log
type prod_actualizado_type is record (
producto_log_id producto_log.producto_log_id%type,
producto_id producto_log.producto_id%type,
precio_anterior producto_log.precio_anterior%type,
precio_nuevo producto_log.precio_nuevo%type,
fecha_actualizacion producto_log.fecha_actualizacion%type,
usuario_actualiza producto_log.usuario_actualiza%type
);
--Crea un objeto tipo collection para almacenar los productos
type precio_list_type is table of prod_actualizado_type;
--Crea una colección y la inicializa.
precio_list precio_list_type := precio_list_type();
--inicia la sección before each row
before each row is
--declara variables que solo se usan en este bloque
v_usuario varchar2(30) := sys_context('USERENV','SESSION_USER');
v_fecha date := sysdate;
v_index number;
begin
--asigna espacio a la colección
precio_list.extend;
--obtiene el índice siguiente para guardar el objeto modificado
v_index := precio_list.last;
--guarda el nuevo registro cuyo precio ha cambiado.
precio_list(v_index).producto_log_id := producto_log_seq.nextval;
precio_list(v_index).producto_id := :new.producto_id;
precio_list(v_index).precio_anterior := :old.precio;
precio_list(v_index).precio_nuevo := :new.precio;
precio_list(v_index).fecha_actualizacion := v_fecha;
precio_list(v_index).usuario_actualiza := v_usuario;
end before each row;
--inicia after statement
--aquí se hacen las inserciones de forma eficiente
after statement is
begin
forall i in precio_list.first .. precio_list.last
insert into producto_log(producto_log_id,producto_id,
precio_anterior,precio_nuevo,fecha_actualizacion,
usuario_actualiza)
values(precio_list(i).producto_log_id, precio_list(i).producto_id,
precio_list(i).precio_anterior,precio_list(i).precio_nuevo,
precio_list(i).fecha_actualizacion, precio_list(i).usuario_actualiza
);
end after statement;
end;
/
show errors;
