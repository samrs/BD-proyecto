--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
--@Fecha creación: 07/12/2019
--@Descripción: Creacion de secuencias
create sequence seq_vuelo_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_numero_vuelo
start with 1000
increment by 1
maxvalue 9999
minvalue 1000
cycle;

create sequence seq_aeronave_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_tripulacion_vuelo_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_empleado_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_historico_status_vuelo_id
start with 0
increment by 1
minvalue 0
nomaxvalue
nocycle;

create sequence seq_paquete_vuelo_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_paquete_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_aeropuerto_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_pasajero_vuelo_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_pasajero_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;

create sequence seq_pase_abordar_id
start with 0
increment by 1
minvalue 0
nomaxvalue 
nocycle;
