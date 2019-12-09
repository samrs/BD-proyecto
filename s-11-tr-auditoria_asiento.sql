--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Trigger que valida que ningun empleado cambie el asiento de un pasajero

create sequence seq_auditoria_asiento
start with 0
increment by 1
nomaxvalue 
minvalue 0
nocycle;

create table auditoria_asiento(
    auditoria_asiento_id number(10,0) not null,
    fecha_cambio date default sysdate,
    usuario varchar2(38) not null,
    asiento_nuevo number(3,0) null,
    asiento_anterior number(3,0) null,
    pasajero_id number(10,0) null,
    constraint auditoria_asiento_pk primary key (auditoria_asiento_id)
);

create or replace trigger tr_valida_asiento
  before update of asiento
  or delete
  on pasajero_vuelo
  for each row 
declare
    v_count  number;
begin
  case
  when updating ('asiento') then
    insert into auditoria_asiento (auditoria_asiento_id, 
      fecha_cambio, usuario, asiento_nuevo, asiento_anterior, pasajero_id)
      values(
        seq_auditoria_asiento.nextval,
        sysdate, 
        sys_context('USERENV','SESSION_USER'), 
        :new.asiento,
        :old.asiento,
        :new.pasajero_id
      );
    raise_application_error(-20010,
      'No se permiten modificar asientos asignados');
  when deleting then
    insert into auditoria_asiento (auditoria_asiento_id, 
      fecha_cambio, usuario, pasajero_id)
      values(
        seq_auditoria_asiento.nextval,
        sysdate, 
        sys_context('USERENV','SESSION_USER')
      );
    raise_application_error(-20011,
      'No se permiten registros con vuelos');
  end case; 
end;
/
show errors 