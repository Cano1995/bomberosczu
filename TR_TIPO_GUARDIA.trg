create or replace trigger TR_TIPO_GUARDIA
  before insert
  on TIPO_GUARDIA 
  for each row
declare
  -- local variables here
begin
  SELECT NVL(SUM(T.TGUA_CLAVE), 0) + 1 INTO :NEW.TGUA_CLAVE FROM TIPO_GUARDIA T;
end TR_TIPO_GUARDIA;
/
