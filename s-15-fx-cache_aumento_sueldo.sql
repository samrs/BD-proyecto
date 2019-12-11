--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción:Funcion para guardar en cache el aumento de sueldo

create or replace function cache_aumento_sueldo(v_sueldo_mensual number, aumento number)
return number
result_cache relies_on(puesto) is
v_aumento_sueldo number;
begin
v_aumento_sueldo := v_sueldo_mensual * (1 + (aumento/100));
return v_aumento_sueldo;
end;
/