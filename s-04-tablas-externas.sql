--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 01/12/2019
--@Descripción: Creacion de tabla externa

create table vuelo_ext (
    num_vuelo number(10, 0),
    fecha_salida date,
    aerolinea varchar2(40),
    pais_destino varchar2(100),
    pais_origen varchar2(100)
)
organization external (
    type oracle_loader
    default directory tmp_dir
    access parameters (
        records delimited by newline
        badfile tmp_dir:'vuelo_ext_bad.log'
        logfile tmp_dir:'vuelo_ext.log'
        fields terminated by ','
        lrtrim
        missing field values are null
        (
        num_vuelo, fecha_salida date mask "dd/mm/yyyy", 
        aerolinea, pais_destino, pais_origen
        )
    )
    location ('vuelo_ext.txt')
)
reject limit unlimited;