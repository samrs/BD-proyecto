--@Autor(es): Ramos Sanchez Samuel
--@Fecha creación: 08/12/2019
--@Descripción: 

create or replace procedure crea_libro_blob(p_libro_id out number,
    p_titulo in varchar2, p_nombre_archivo in varchar2) is
    v_bfile bfile;
    v_src_offset number := 1;
    v_dest_offset number:= 1;
    v_dest_blob blob;
    v_src_length number;
    v_dest_length number;
    begin
    v_bfile := bfilename('DATA_DIR',p_nombre_archivo);
    if dbms_lob.fileexists(v_bfile) = 1 and not
        dbms_lob.isopen(v_bfile) = 1 then
        dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
    else
        raise_application_error(-20001,'El archivo '
        ||p_nombre_archivo
        ||' no existe en el directorio DATA_DIR'
        ||' o el archivo esta abierto');
    end if;
    select libro_seq.nextval into p_libro_id
    from dual;

    insert into libro_blob(libro_id,titulo,version_digital)
    values(p_libro_id,p_titulo,empty_blob());

    select version_digital into v_dest_blob
    from libro_blob
    where libro_id = p_libro_id;

    dbms_lob.loadblobfromfile(
        dest_lob => v_dest_blob,
        src_bfile => v_bfile,
        amount => dbms_lob.getlength(v_bfile),
        dest_offset => v_dest_offset,
        src_offset => v_src_offset);
    dbms_lob.close(v_bfile);
        v_src_length := dbms_lob.getlength(v_bfile);
        v_dest_length := dbms_lob.getlength(v_dest_blob);
    if v_src_length = v_dest_length then
        dbms_output.put_line('Escritura correcta, bytes escritos: '
        || v_src_length);
    else
        raise_application_error(-20002,'Error al escribir datos.\n'
        ||' Se esperaba escribir '||v_src_length
        ||' Pero solo se escribio '||v_dest_length);
    end if;
end;
/
show errors