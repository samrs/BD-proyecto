--@Autor(es): Riviera Nagano Alejandro
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



















-- INSERCION DE PASAJEROS
insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'RIOS', 'LORENA', 'lorencam@mail.com', to_date('710620','yymmdd'), 'CARL710620MCCMSR00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'OLMOS', 'OLMOS', 'RAMIRO', 'ramirolm@mail.com', to_date('890627','yymmdd'), 'OOOR890627HGRLLM14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'OLMOS', 'SARA', 'saracam@mail.com', to_date('610106','yymmdd'), 'CAOS610106MSPMLR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GODINEZ', 'LOPEZ', 'LORENA', 'lorengod@mail.com', to_date('810912','yymmdd'), 'GOLL810912MCHDPR00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'GONZALEZ', 'VANESSA', 'vanesper@mail.com', to_date('890316','yymmdd'), 'PEGV890316MJCRNN15');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'RIOS', 'JAIME', 'jaimejim@mail.com', to_date('780602','yymmdd'), 'JIRJ780602HZSMSM09');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'SANCHEZ', 'CAMPOS', 'CAMILA', 'camilsan@mail.com', to_date('611220','yymmdd'), 'SACC611220MCLNMM14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'HERNANDEZ', 'GODINEZ', 'JORGE', 'jorgeher@mail.com', to_date('751001','yymmdd'), 'HEGJ751001HCMRDR00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'OLMOS', 'LOPEZ', 'ABIGAIL', 'abigaolm@mail.com', to_date('780825','yymmdd'), 'OOLA780825MCLLPB14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'FLORES', 'ANDREA', 'andrelop@mail.com', to_date('801018','yymmdd'), 'LOFA801018MJCPLN11');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'PEREZ', 'LORENA', 'lorengon@mail.com', to_date('850901','yymmdd'), 'GOPL850901MTSNRR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RIOS', 'LOPEZ', 'JAZMIN', 'jazmirio@mail.com', to_date('820222','yymmdd'), 'RILJ820222MPLSPZ04');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RIOS', 'LOPEZ', 'ALEJANDRA', 'alejario@mail.com', to_date('680107','yymmdd'), 'RILA680107MCCSPL07');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'HERNANDEZ', 'SANCHEZ', 'BERENICE', 'berenher@mail.com', to_date('831005','yymmdd'), 'HESB831005MMSRNR12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'MELENDEZ', 'RIOS', 'JAVIER', 'javiemel@mail.com', to_date('700320','yymmdd'), 'MERJ700320HPLLSV15');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'PEREZ', 'CARLOS', 'carloram@mail.com', to_date('851017','yymmdd'), 'RAPC851017HTLMRR01');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'SANCHEZ', 'HERNANDEZ', 'TEO', 'teosan@mail.com', to_date('620925','yymmdd'), 'SAHT620925HGTNRX14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'HERNANDEZ', 'ABIGAIL', 'abigaper@mail.com', to_date('680902','yymmdd'), 'PEHA680902MDGRRB07');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'RIOS', 'ABIGAIL', 'abigalop@mail.com', to_date('811203','yymmdd'), 'LORA811203MASPSB01');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'SANCHEZ', 'JAZMIN', 'jazmigon@mail.com', to_date('750817','yymmdd'), 'GOSJ750817MJCNNZ13');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'RIOS', 'RODRIGO', 'rodrilop@mail.com', to_date('750804','yymmdd'), 'LORR750804HTSPSD00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'JIMENEZ', 'CARLOS', 'carloper@mail.com', to_date('670504','yymmdd'), 'PEJC670504HTCRMR02');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'LOPEZ', 'MARIA', 'mariajim@mail.com', to_date('800310','yymmdd'), 'JILM800310MQRMPR04');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'CAMPOS', 'ANGELICA', 'angeljim@mail.com', to_date('831027','yymmdd'), 'JICA831027MPLMMN06');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GODINEZ', 'PEREZ', 'SARA', 'saragod@mail.com', to_date('830328','yymmdd'), 'GOPS830328MGRDRR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'RIOS', 'DAVID', 'davidgon@mail.com', to_date('650418','yymmdd'), 'GORD650418HMNNSV13');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RIOS', 'SANCHEZ', 'SARA', 'sarario@mail.com', to_date('601212','yymmdd'), 'RISS601212MMCSNR10');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'MELENDEZ', 'JAIME', 'jaimelop@mail.com', to_date('880805','yymmdd'), 'LOMJ880805HHGPLM03');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'RAMOS', 'JAVIER', 'javiegon@mail.com', to_date('840112','yymmdd'), 'GORJ840112HCLNMV12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'HERNANDEZ', 'GONZALEZ', 'MARIA', 'mariaher@mail.com', to_date('900611','yymmdd'), 'HEGM900611MNLRNR02');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'SANCHEZ', 'FLORES', 'PATRICIA', 'patrisan@mail.com', to_date('770509','yymmdd'), 'SAFP770509MDGNLT10');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'HERNANDEZ', 'LOPEZ', 'BERENICE', 'berenher@mail.com', to_date('651119','yymmdd'), 'HELB651119MNTRPR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RIOS', 'JIMENEZ', 'RAMIRO', 'ramirrio@mail.com', to_date('870215','yymmdd'), 'RIJR870215HDFSMM05');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'GONZALEZ', 'BERENICE', 'berencam@mail.com', to_date('610427','yymmdd'), 'CAGB610427MVZMNR12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'MELENDEZ', 'DAVID', 'davidjim@mail.com', to_date('780321','yymmdd'), 'JIMD780321HOCMLV00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RIOS', 'MELENDEZ', 'LORENA', 'lorenrio@mail.com', to_date('721108','yymmdd'), 'RIML721108MNESLR12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'HERNANDEZ', 'PATRICIA', 'patrijim@mail.com', to_date('630401','yymmdd'), 'JIHP630401MSPMRT00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'RAMOS', 'ALEJANDRA', 'alejaper@mail.com', to_date('640327','yymmdd'), 'PERA640327MGTRML07');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'OLMOS', 'GONZALEZ', 'SAUL', 'saulolm@mail.com', to_date('880713','yymmdd'), 'OOGS880713HTCLNL06');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'PEREZ', 'JAZMIN', 'jazmijim@mail.com', to_date('750424','yymmdd'), 'JIPJ750424MPLMRZ12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'FLORES', 'BERENICE', 'berenram@mail.com', to_date('611208','yymmdd'), 'RAFB611208MDGMLR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GODINEZ', 'RIOS', 'TEO', 'teogod@mail.com', to_date('701224','yymmdd'), 'GORT701224HGRDSX14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'MELENDEZ', 'RIOS', 'GONZALO', 'gonzamel@mail.com', to_date('851204','yymmdd'), 'MERG851204HCHLSN00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'LOPEZ', 'JAIME', 'jaimeram@mail.com', to_date('820605','yymmdd'), 'RALJ820605HMCMPM00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'FLORES', 'BERENICE', 'berencam@mail.com', to_date('721016','yymmdd'), 'CAFB721016MMNMLR06');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'MELENDEZ', 'MARIO', 'mariogon@mail.com', to_date('661123','yymmdd'), 'GOMM661123HGTNLR04');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'LOPEZ', 'ANDREA', 'andrecam@mail.com', to_date('630919','yymmdd'), 'CALA630919MTLMPN13');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'OLMOS', 'MARIA', 'marialop@mail.com', to_date('620822','yymmdd'), 'LOOM620822MVZPLR12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'MELENDEZ', 'PEREZ', 'BERENICE', 'berenmel@mail.com', to_date('670812','yymmdd'), 'MEPB670812MASLRR11');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'SANCHEZ', 'HERNANDEZ', 'BERENICE', 'berensan@mail.com', to_date('600105','yymmdd'), 'SAHB600105MPLNRR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'LOPEZ', 'FLORES', 'ANGELICA', 'angellop@mail.com', to_date('880718','yymmdd'), 'LOFA880718MBCPLN06');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'RAMOS', 'SARA', 'sararam@mail.com', to_date('711006','yymmdd'), 'RARS711006MSLMMR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'GONZALEZ', 'JAIME', 'jaimegon@mail.com', to_date('820327','yymmdd'), 'GOGJ820327HGTNNM01');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'MELENDEZ', 'PEREZ', 'LORENA', 'lorenmel@mail.com', to_date('751019','yymmdd'), 'MEPL751019MQRLRR12');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'PEREZ', 'LORENA', 'lorenper@mail.com', to_date('900218','yymmdd'), 'PEPL900218MPLRRR00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'MELENDEZ', 'CAMILA', 'camilper@mail.com', to_date('720807','yymmdd'), 'PEMC720807MCHRLM01');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'SANCHEZ', 'LORENA', 'lorenper@mail.com', to_date('631107','yymmdd'), 'PESL631107MJCRNR03');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'RIOS', 'ABIGAIL', 'abigaram@mail.com', to_date('690614','yymmdd'), 'RARA690614MJCMSB00');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'MELENDEZ', 'LORENA', 'lorenper@mail.com', to_date('631201','yymmdd'), 'PEML631201MCHRLR14');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'CAMPOS', 'JAVIER', 'javiejim@mail.com', to_date('890823','yymmdd'), 'JICJ890823HGRMMV01');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'OLMOS', 'ANGELICA', 'angelper@mail.com', to_date('730924','yymmdd'), 'PEOA730924MNERLN08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'CAMPOS', 'RIOS', 'ALEJANDRO', 'alejacam@mail.com', to_date('610409','yymmdd'), 'CARA610409HSPMSL02');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GONZALEZ', 'RAMOS', 'CAMILA', 'camilgon@mail.com', to_date('780801','yymmdd'), 'GORC780801MDFNMM02');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'FLORES', 'RIOS', 'CAMILA', 'camilflo@mail.com', to_date('690427','yymmdd'), 'FORC690427MNTLSM06');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'JIMENEZ', 'MELENDEZ', 'JAZMIN', 'jazmijim@mail.com', to_date('690909','yymmdd'), 'JIMJ690909MBSMLZ11');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'RAMOS', 'RIOS', 'PATRICIA', 'patriram@mail.com', to_date('760904','yymmdd'), 'RARP760904MDFMST04');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'PEREZ', 'MELENDEZ', 'ANDREA', 'andreper@mail.com', to_date('770816','yymmdd'), 'PEMA770816MSLRLN13');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'HERNANDEZ', 'CAMPOS', 'JORGE', 'jorgeher@mail.com', to_date('610614','yymmdd'), 'HECJ610614HBCRMR08');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'OLMOS', 'CAMPOS', 'LORENA', 'lorenolm@mail.com', to_date('880512','yymmdd'), 'OOCL880512MSPLMR15');

insert into pasajero
(pasajero_id,apellido_paterno,apellido_materno,nombre,email,fecha_nacimiento, curp)
values
(seq_pasajero_id.nextval, 'GODINEZ', 'JIMENEZ', 'PATRICIA', 'patrigod@mail.com', to_date('720214','yymmdd'), 'GOJP720214MGRDMT05');








-- INSERTANDO Y "LLENANDO" UN VUELO COMERCIAL
insert into vuelo
(vuelo_id, aeronave_id, numero_vuelo, sala_abordar, fecha_salida, fecha_llegada,
aeropuerto_destino_id, aeropuerto_origen_id, estatus_vuelo_id)
values(seq_vuelo_id.nextval, 1, seq_numero_vuelo.nextval, 75, to_date('05/05/2018 10:05','dd/mm/yyyy hh24:mi'), to_date('05/05/2018 12:35','dd/mm/yyyy hh24:mi'),
4, 3, 1);
insert into pasajero_vuelo
(pasajero_vuelo_id, vuelo_id, pasajero_id, folio_pase_abordar, se_presento, asiento, atencion)
values
(seq_pasajero_vuelo_id.nextval, 0,0,'AFV-01-000', 1, 20, 'No requiere');
insert into pase_abordar
(pase_abordar_id, vuelo_id, pasajero_vuelo_id, fecha_impresion)
values 
(seq_pase_abordar_id.nextval, 0, 0,to_date('01/05/2018 10:50','dd/mm/yy hh24:mi'));
insert into maleta
(pasajero_vuelo_id, numero, peso)
values
(0,1, 20);

insert into pasajero_vuelo
(pasajero_vuelo_id, vuelo_id, pasajero_id, folio_pase_abordar, se_presento, asiento, atencion)
values
(seq_pasajero_vuelo_id.nextval, 0,1,'AFV-01-001', 1, 20, 'No requiere');
insert into pase_abordar
(pase_abordar_id, vuelo_id, pasajero_vuelo_id, fecha_impresion)
values 
(seq_pase_abordar_id.nextval, 0, 1,to_date('30/04/2018 10:50','dd/mm/yy hh24:mi'));
insert into maleta
(pasajero_vuelo_id, numero, peso)
values
(1,1, 20);

insert into pasajero_vuelo
(pasajero_vuelo_id, vuelo_id, pasajero_id, folio_pase_abordar, se_presento, asiento, atencion)
values
(seq_pasajero_vuelo_id.nextval, 0,2,'AFV-01-002', 1, 20, 'No requiere');
insert into pase_abordar
(pase_abordar_id, vuelo_id, pasajero_vuelo_id, fecha_impresion)
values 
(seq_pase_abordar_id.nextval, 0, 2,to_date('02/05/2018 10:50','dd/mm/yy hh24:mi'));
insert into maleta
(pasajero_vuelo_id, numero, peso)
values
(2,0, 0);
