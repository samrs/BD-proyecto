--@Autor(es): Ramos Sanchez Samuel y Riviera Nagano Alejandro
--@Fecha creación: 07/12/2019
--@Descripción: Creacion de indices
create unique index em_empleados_iuk on empleado(nombre, rfc, curp);
create index em_nombre_ix on empleado(upper(nombre));
create index em_apellido_paterno_ix on empleado(upper(apellido_paterno));
create index em_empleado_puesto_iuk on empleado(nombre, puesto_id);

create unique index vu_numero_vuelo_iuk on vuelo(vuelo_id, numero_vuelo);
create index vu_destino_hora_vuelo_ix on vuelo(to_char(fecha_salida,'DD/MM/YYYY'), aeropuerto_destino_id);

create unique index ae_ubicacion_iuk on aeropuerto(latitud, longitud);
create unique index ae_nombre_iuk on aeropuerto(nombre, clave);

create unique index aero_matricula_iuk on aeronave(matricula, modelo);

create unique index paque_folio_iuk on paquete(folio);

create unique index pa_email_iuk on pasajero(email);
--create unique index pa_curp_iuk on pasajero(curp);
create index pa_nombre_ix on pasajero(upper(nombre));
create index pa_apellido_paterno_ix on pasajero(upper(apellido_paterno));

create unique index pv_folio_pase_iuk on pasajero_vuelo(folio_pase_abordar);
