--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción:Funcion para sacar curp

create or replace function obtener_rfc(
nombre varchar2,
apellido_paterno varchar2,
apellido_materno varchar2,
fecha_nacimiento date,
homoclave varchar2
) return varchar2 is
v_rfc varchar2(13);
begin
v_rfc := substr(apellido_paterno, 1, 2) 
|| substr(apellido_materno, 1, 1)
|| substr(nombre, 1, 1)
|| to_char(fecha_nacimiento, 'YYMMDD')
|| homoclave;
return v_rfc;
end;
/
show errors