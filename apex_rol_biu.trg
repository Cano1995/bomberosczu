create or replace trigger apex_rol_biu
    before insert or update
    on apex_rol
    for each row
DECLARE 
V_CLAVE NUMBER:=0;
begin
  select NVL(MAX(id),0)+1
    into V_CLAVE
    from apex_rol;

    if :new.id is null then
        :new.id := V_CLAVE;
    end if;
    if inserting then
        :new.created := sysdate;
        :new.created_by := NVL(v('APP_USER'), USER);
    end if;
    :new.updated := sysdate;
    :new.updated_by := NVL(v('APP_USER'), USER);
end apex_rol_biu;
/
