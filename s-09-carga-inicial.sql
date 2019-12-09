--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 07/12/2019
--@Descripción: Carga de datos para las tablas


insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'ACA', 'General Juan N. Alvarez', 16.756944, -99.753611, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'HMO', 'General Ignacio Pesqueira Garcia', 29.1, -111.05, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'LAX', 'Los Angeles International Airport', 33.942499, -118.40722, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'MEX', 'Benito Juarez International', 19.4363888, -99.07222, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'CUN', 'Cancun International Airport', -99.07222, -86.87694, 1 );

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'SJD', 'Los Cabos International Airport', 23.15194, -109.7211, 0);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'PCM', 'Playa del Carmen', 20.55, -87.116, 1);

insert into aeropuerto
(aeropuerto_id, clave, nombre, latitud, longitud, activo)
values
(seq_aeropuerto_id.nextval, 'SCX', 'Salina Cruz', 16.1666, -95.2, 1);





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







insert into puesto 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(1, 'AF-PIL', 'PILOTO', 'Responsable de llevar a cabo los vuelos', 120000);

insert into puesto 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(2, 'AF-COP', 'COPILOTO', 'Corresponsable del vuelo y obligaciones superiores', 100000);

insert into puesto 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(3, 'AF-TEC', 'TECNICO', 'Resguarda la integridad de la carga durante el vuelo', 90000);

insert into puesto 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(4, 'AF-JS', 'JEFE DE SOBRECARGOS', 'Supervisa y lidera la atención al pasajero', 80000);

insert into puesto 
(puesto_id, clave, nombre, descripcion, sueldo_mensual)
values
(5, 'AF-S', 'SOBRECARGO', 'En vuelos comerciales, atender a los pasajeros', 60000);






insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(1, 'AFPK-C', 'Chico', 'Dimensiones menores a 50x40');

insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(2, 'AFPK-CF', 'Chico, frágil', 'Dimensiones menores a 50x40');

insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(3, 'AFPK-M', 'Mediano', 'Dimensiones menores a 80x120');

insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(4, 'AFPK-MF', 'Mediano, frágil', 'Dimensiones menores a 80x120');

insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(5, 'AFPK-G', 'Grande', 'Dimensiones mayores a 80x120');

insert into tipo_paquete
(tipo_paquete_id, clave, descripcion, indicaciones)
values
(6, 'AFPK-GF', 'Grande, frágil', 'Dimensiones mayores a 80x120');






insert into aeronave
(aeronave_id, matricula, es_carga, es_comercial, modelo, especificaciones_pdf)
values
(seq_aeronave_id.nextval, 'AFMXP001', 0, 1, 'EMB-170', null);
insert into comercial
(aeronave_id, pasajeros_ordinarios, pasajeros_discapacitados, pasajeros_vip)
values
(seq_aeronave_id.currval, 70, 0, 6);


insert into aeronave
(aeronave_id, matricula, es_carga, es_comercial, modelo, especificaciones_pdf)
values
(seq_aeronave_id.nextval, 'AFMXP002', 0, 1, 'EMB-190', null);
insert into comercial
(aeronave_id, pasajeros_ordinarios, pasajeros_discapacitados, pasajeros_vip)
values
(seq_aeronave_id.currval, 82, 5, 12 );

insert into aeronave
(aeronave_id, matricula, es_carga, es_comercial, modelo, especificaciones_pdf)
values
(seq_aeronave_id.nextval, 'AFMXP003', 0, 1, 'EMB-190', null);
insert into comercial
(aeronave_id, pasajeros_ordinarios, pasajeros_discapacitados, pasajeros_vip)
values
(seq_aeronave_id.currval, 82, 5, 12 );


insert into aeronave
(aeronave_id, matricula, es_carga, es_comercial, modelo, especificaciones_pdf)
values
(seq_aeronave_id.nextval, 'AFMXB001', 1, 1, 'B-737-800', null);
insert into carga
(aeronave_id, num_bodegas, ancho_bodega, alto_bodega, capacidad_carga)
values
(seq_aeronave_id.currval, 1, 3, 2, 6000);
insert into comercial
(aeronave_id, pasajeros_ordinarios, pasajeros_discapacitados, pasajeros_vip)
values
(seq_aeronave_id.currval, 130, 12, 18 );



insert into aeronave
(aeronave_id, matricula, es_carga, es_comercial, modelo, especificaciones_pdf)
values
(seq_aeronave_id.nextval, 'AFMXC001', 1, 0, 'ANTONOV-12', null);
insert into carga
(aeronave_id, num_bodegas, ancho_bodega, alto_bodega, capacidad_carga)
values
(seq_aeronave_id.currval, 1, 3.25, 2.45, 15000);







insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GODINEZ', 'GONZALEZ', 'ALEJANDRA', 5 , 'GOGA620214VL0', 'GOGA620214MTSDNL11');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'PEREZ', 'OLMOS', 'GONZALO', 3 , 'PEOG6410113N5', 'PEOG641011HYNRLN09');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'RAMOS', 'LOPEZ', 'DAVID', 3 , 'RALD7307254B1', 'RALD730725HHGMPV13');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'LOPEZ', 'JIMENEZ', 'SARA', 4 , 'LOJS680512ZM8', 'LOJS680512MTSPMR12');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'LOPEZ', 'RIOS', 'JAIME', 5 , 'LORJ900914Z2B', 'LORJ900914HTCPSM09');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'PEREZ', 'RIOS', 'LORENA', 2 , 'PERL810921XQM', 'PERL810921MDFRSR06');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'JIMENEZ', 'GONZALEZ', 'DAVID', 1 , 'JIGD861016N58', 'JIGD861016HTLMNV05');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GONZALEZ', 'RIOS', 'CAMILA', 4 , 'GORC650803NW5', 'GORC650803MDGNSM00');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'JIMENEZ', 'RIOS', 'JUAN', 5 , 'JIRJ7607255CY', 'JIRJ760725HNTMSN14');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GONZALEZ', 'JIMENEZ', 'JAIME', 5 , 'GOJJ610312MYL', 'GOJJ610312HNENMM03');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'PEREZ', 'RAMOS', 'ALEJANDRA', 2 , 'PERA790321ELC', 'PERA790321MCCRML15');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'LOPEZ', 'JIMENEZ', 'LORENA', 3 , 'LOJL6508262XJ', 'LOJL650826MQRPMR12');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GONZALEZ', 'OLMOS', 'SARA', 1 , 'GOOS660319JRQ', 'GOOS660319MCHNLR00');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GODINEZ', 'SANCHEZ', 'JORGE', 5 , 'GOSJ690614KQJ', 'GOSJ690614HDGDNR03');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'PEREZ', 'JIMENEZ', 'ALEJANDRA', 2 , 'PEJA9010280ZJ', 'PEJA901028MYNRML03');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'PEREZ', 'PEREZ', 'JORGE', 5 , 'PEPJ6603070HZ', 'PEPJ660307HZSRRR02');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GODINEZ', 'HERNANDEZ', 'CAMILA', 2 , 'GOHC720423AND', 'GOHC720423MASDRM02');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'SANCHEZ', 'GONZALEZ', 'SARA', 2 , 'SAGS650711T2H', 'SAGS650711MSPNNR11');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'RAMOS', 'GODINEZ', 'CAMILA', 3 , 'RAGC7301031R6', 'RAGC730103MHGMDM13');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'OLMOS', 'JIMENEZ', 'CAMILA', 1 , 'OOJC7605247UF', 'OOJC760524MTLLMM13');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'RAMOS', 'GONZALEZ', 'ALEJANDRA', 4 , 'RAGA740827LSO', 'RAGA740827MMSMNL15');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'OLMOS', 'RIOS', 'LORENA', 1 , 'OORL611128DZG', 'OORL611128MGRLSR15');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'RIOS', 'SANCHEZ', 'GONZALO', 2 , 'RISG8012198I0', 'RISG801219HASSNN03');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'OLMOS', 'JIMENEZ', 'GONZALO', 2 , 'OOJG770326R6I', 'OOJG770326HBSLMN09');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GONZALEZ', 'JIMENEZ', 'JORGE', 1 , 'GOJJ8304122OF', 'GOJJ830412HBCNMR07');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'LOPEZ', 'GONZALEZ', 'ALEJANDRA', 3 , 'LOGA7111209TO', 'LOGA711120MMCPNL05');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'CAMPOS', 'OLMOS', 'ALEJANDRA', 2 , 'CAOA630818IM7', 'CAOA630818MYNMLL09');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'JIMENEZ', 'LOPEZ', 'DAVID', 3 , 'JILD6502061FB', 'JILD650206HBCMPV14');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'SANCHEZ', 'GONZALEZ', 'ALEJANDRA', 2 , 'SAGA620310XUS', 'SAGA620310MCLNNL07');

insert into empleado
(empleado_id, jefe_id, foto, apellido_paterno,apellido_materno, nombre,puesto_id, rfc, curp)
values
(seq_empleado_id.nextval,null,null, 'GODINEZ', 'CAMPOS', 'SARA', 2 , 'GOCS770617YA3', 'GOCS770617MPLDMR14');
