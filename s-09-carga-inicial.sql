--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 07/12/2019
--@Descripción: Carga de datos para las tablas


insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, ACA, 'General Juan N. Alvarez', 16.756944, -99.753611, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, HMO, 'General Ignacio Pesqueira Garcia', 29.1, -111.05, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, LAX, 'Los Angeles International Airport', 33.942499, -118.40722, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, MEX, 'Benito Juarez International', 19.4363888, -99.07222, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, CUN, 'Cancun International Airport', -99.07222, -86.87694, 1 );

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, SJD, 'Los Cabos International Airport', 23.15194, -109.7211, 0);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, PCM, 'Playa del Carmen', 20.55, -87.116, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, SCX, 'Salina Cruz', 16.1666, -95.2, 1);





insert into estatus_vuelo
(estatus_vuelo_id, clave, descripcion)
values
(1, 'PROGRAMADO', 'El vuelo ha sido autorizado');

insert into estatus_vuelo
(estatus_vuelo_id, clave, descripcion)
values
(2, 'ABORDANDO', 'Los pasajeros deben abordar ahora');

insert into estatus_vuelo
(estatus_vuelo_id, clave, descripcion)
values
(3, 'A TIEMPO', 'El vuelo sale a la hora indicada');

insert into estatus_vuelo
(estatus_vuelo_id, clave, descripcion)
values
(4, 'DEMORADO', 'El vuelo ha sido demorado');

insert into estatus_vuelo
(estatus_vuelo_id, clave, descripcion)
values
(5, 'CANCELADO', 'El vuelo ha sido cancelado');







insert into puesto_empleado 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(1, 'AF-PIL', 'PILOTO', 'Responsable de llevar a cabo los vuelos', 120000);

insert into puesto_empleado 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(2, 'AF-COP', 'COPILOTO', 'Corresponsable del vuelo y obligaciones superiores', 120000);

insert into puesto_empleado 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(3, 'AF-TEC', 'TECNICO', 'Resguarda la integridad de la carga durante el vuelo', 120000);

insert into puesto_empleado 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(4, 'AF-JS', 'JEFE DE SOBRECARGOS', 'Supervisa y lidera la atención al pasajero', 120000);

insert into puesto_empleado 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(5, 'AF-SOB', 'SOBRECARGOS', 'En vuelos comerciales, atender a los pasajeros', 120000);


