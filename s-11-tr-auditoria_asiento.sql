--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Trigger que valida que ningun empleado cambie el asiento de un pasajero

create sequence seq_auditoria_asiento
start with 0
increment by 1
nomaxvalue 
nocycle;

create table auditoria_asiento(
    auditoria_extraordinario_id number(10,0) not null,
    fecha_cambio date default sysdate,
    usuario varchar2(40),
    asiento_nuevo number(3,0) not null,
    asiento_anterior number(3,0) not null
    constraint auditoria_asiento_pk primary key (auditoria_extraordinario_id),
);

create or replace trigger tr_valida_asiento
  before update of asiento
  or delete of asiento
  on pasajero_vuelo
  for each row 
declare
    v_count  number;
begin
  case
  when upgrading ('asiento') then
    insert into auditoria_asiento(auditoria_extraordinario_id, 
      fecha_cambio, usuario, asiento_nuevo, asiento_anterior)
      values(
        auditoria_asiento_seq.nextval,
        sysdate, 
        sys_context('USERENV','SESSION_USER'), 
        :new.asiento
        :old.asiento
      );
    raise_application_error(-20011,
      'No se permiten modificar asientos asignados');
  when deleting ('asiento') then
    insert into auditoria_asiento(auditoria_extraordinario_id, 
      fecha_cambio, usuario, asiento_nuevo, asiento_anterior)
      values(
        auditoria_asiento_seq.nextval,
        sysdate, 
        sys_context('USERENV','SESSION_USER'), 
        :new.asiento
        :old.asiento
      );
    raise_application_error(-20011,
      'No se permiten eliminar asientos asignados');
  end case; 
end;
/
show errors 