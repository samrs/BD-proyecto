--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: Funcion para obtener matricula de aeronave

create or replace function obtener_matricula_aero(
    modelo varchar2,
    es_carga number,
    es_comercial number
    ) return varchar2 is
    v_matricula varchar2(10);
    begin
        v_matricula := substr(modelo, 1, 3);
        if es_carga = 1 and es_comercial = 1 then
            v_matricula := v_matricula || '-CC-';
        elsif es_carga = 0 and es_comercial = 1 then
            v_matricula := v_matricula || '-CO-';
        elsif es_carga = 1 and es_comercial = 0 then
            v_matricula := v_matricula || '-CA-';
        end if;
        v_matricula := v_matricula || substr(modelo, length(modelo)-2);
        v_matricula := upper(v_matricula);
        return v_matricula;
    end;
/
show errors