--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Trigger agregar valores a historico


create or replace trigger tr_hist_status
after insert or update of status_vuelo_id on vuelo
for each row
declare
v_status_id number(2,0);
v_fecha_status date;
v_hist_id number(10,0);
v_vuelo_id number(10,0);
begin

select historico_status_vuelo_id_seq.nextval into v_hist_id from dual;
v_status_id := :new.status_vuelo_id;
v_fecha_status := sysdate;
v_vuelo_id := :new.vuelo_id;
dbms_output.put_line('status anterior: '|| :old.status_vuelo_id);
dbms_output.put_line('status nuevo: '|| :new.status_vuelo_id);
dbms_output.put_line('insertando en historico, vuelo_id: '
|| v_vuelo_id ||', status_id: ' || v_status_id
||', fecha: '|| v_fecha_status||', hist_id: '||v_hist_id);

insert into historico_status_vuelo
(historico_status_vuelo_id, status_vuelo_id, fecha_status, vuelo_id)
values(v_hist_id, v_status_id, v_fecha_status, v_vuelo_id);
end;
/
show errors