--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para funcion de aumento de sueldo en cache

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Revisar aumento
Prompt ==================================================
declare
	v_aumento number := 10;
    v_sueldo_mensual number := 100;
    v_resultado number;
begin 
    dbms_output.put_line('Iniciando funcion');
    v_resultado := cache_aumento_sueldo(v_sueldo_mensual, v_aumento);
	if v_resultado = 110 then
        dbms_output.put_line('OK, prueba 1 Exitosa.');
    else
    	raise_application_error(-20001,
		'ERROR. No se calculo correctamente');
	end if;
end;
/
rollback;