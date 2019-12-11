--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para funcion que calcula rfc

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Revisar rfc
Prompt ==================================================
declare
    v_nombre varchar2(40) := 'MANUEL';
    v_apellido_paterno varchar2(40) := 'JUAREZ';
    v_apellido_materno varchar2(40) := 'MORELOS';
    v_fecha_nacimiento date := to_date('13/03/1942','dd/mm/yyyy');
    v_homoclave varchar2(40) := 'PA9';
    v_resultado varchar2(13);
begin 
    dbms_output.put_line('Iniciando funcion');
    v_resultado := obtener_rfc(
        v_nombre,
        v_apellido_paterno,
        v_apellido_materno,
        v_fecha_nacimiento,
        v_homoclave
    );
	if v_resultado = 'JUMM420313PA9' then
        dbms_output.put_line('OK, prueba 1 Exitosa.');
    else
    	raise_application_error(-20001,
		'ERROR. No se calculo correctamente');
	end if;
end;
/
rollback;