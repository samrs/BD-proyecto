--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 07/12/2019
--@Descripción: Creacion de sinonimos

prompt Creando sinonimos publicos
create or replace public synonym aeronave_comercial for comercial;
create or replace public synonym aeronave_carga for carga;
create or replace public synonym pasajeros for pasajero_vuelo;

prompt Otorgando permisos para hacer consultas a tablas
grant select on vuelo to rr_proy_invitado;
grant select on aeronave to rr_proy_invitado;
grant select on aeropuerto to rr_proy_invitado;

prompt Conectar a invitado para crear sinonimo
connect rr_proy_invitado;
create or replace synonym vuelo for rr_proy_admin.vuelo;
create or replace synonym aeronave for rr_proy_admin.aeronave;
create or replace synonym aeropuerto for rr_proy_admin.aeropuerto;

prompt Conectar a rr_proy_admin
prompt Ingresar password:
connect rr_proy_admin;
prompt Creando sinonimos con prefijos para tablas
create or replace synonym af_vuelo for vuelo;
create or replace synonym af_aeronave for aeronave;
create or replace synonym af_comerciall for comercial;
create or replace synonym af_carga for carga;
create or replace synonym af_direccion_internet for direccion_internet;
create or replace synonym af_puesto for puesto;
create or replace synonym af_empleado for empleado;
create or replace synonym af_ubicacion for ubicacion;
create or replace synonym af_estatus_vuelo for estatus_vuelo;
create or replace synonym af_historico_estatus_vuelo for historico_estatus_vuelo;
create or replace synonym af_tripulacion_vuelo for tripulacion_vuelo;
create or replace synonym af_aeropuerto for aeropuerto;
create or replace synonym af_paquete_vuelo for paquete_vuelo;
create or replace synonym af_paquete for paquete;
create or replace synonym af_tipo_paquete for tipo_paquete;
create or replace synonym af_pasajero for pasajero;
create or replace synonym af_pasajero_vuelo for pasajero_vuelo;
create or replace synonym af_maleta for maleta;
create or replace synonym af_pase_abordar for pase_abordar;