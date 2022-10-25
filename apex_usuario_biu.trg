create or replace trigger apex_usuario_biu
  before insert or update on apex_usuario
  for each row
DECLARE
V_CLAVE NUMBER:=0;
begin

  if inserting then
  select MAX(t.id)+1 INTO V_CLAVE from APEX_USUARIO t;
  if :new.id is null then
    :new.id := V_CLAVE;
  end if;
    :new.created    := sysdate;
    :new.created_by := NVL(v('APP_USER'), USER);
    :NEW.PASSWORD   := toolkit.encrypt(p_text => :NEW.PASSWORD);
  end if;
  :new.updated    := sysdate;
  :new.updated_by := NVL(v('APP_USER'), USER);
end apex_usuario_biu;
/
