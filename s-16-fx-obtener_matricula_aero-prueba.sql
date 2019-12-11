--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Prueba para funcion que calcula matricula

set serveroutput on
Prompt =================================================
Prompt Prueba 1.
Prompt Revisar matricula
Prompt ==================================================
declare
    v_modelo varchar2(40) := 'ANTONOV-12';
    v_es_comercial number := 1;
    v_es_carga number := 1;
    v_resultado varchar2(13);
begin 
    dbms_output.put_line('Iniciando funcion');
    v_resultado := obtener_matricula_aero(
        v_modelo,
        v_es_carga,
        v_es_comercial
    );
	if v_resultado = 'ANT-CC--12' then
        dbms_output.put_line('OK, prueba 1 Exitosa.');
    else
    	raise_application_error(-20001,
		'ERROR. No se calculo correctamente');
	end if;
end;
/

Prompt =================================================
Prompt Prueba 2.
Prompt Revisar matricula
Prompt ==================================================
declare
    v_modelo varchar2(40) := 'ANTONOV-12';
    v_es_comercial number := 1;
    v_es_carga number := 0;
    v_resultado varchar2(13);
begin 
    dbms_output.put_line('Iniciando funcion');
    v_resultado := obtener_matricula_aero(
        v_modelo,
        v_es_carga,
        v_es_comercial
    );
	if v_resultado = 'ANT-CO--12' then
        dbms_output.put_line('OK, prueba 2 Exitosa.');
    else
    	raise_application_error(-20001,
		'ERROR. No se calculo correctamente');
	end if;
end;
/

Prompt =================================================
Prompt Prueba 3.
Prompt Revisar matricula
Prompt ==================================================
declare
    v_modelo varchar2(40) := 'ANTONOV-12';
    v_es_comercial number := 0;
    v_es_carga number := 1;
    v_resultado varchar2(13);
begin 
    dbms_output.put_line('Iniciando funcion');
    v_resultado := obtener_matricula_aero(
        v_modelo,
        v_es_carga,
        v_es_comercial
    );
	if v_resultado = 'ANT-CA--12' then
        dbms_output.put_line('OK, prueba 3 Exitosa.');
    else
    	raise_application_error(-20001,
		'ERROR. No se calculo correctamente');
	end if;
end;
/
rollback;