create or replace trigger TR_RANGO
  before insert
  on CAP_RANGO 
  for each row
declare
  V_CLAVE NUMBER:=0;
begin
  IF INSERTING THEN
    SELECT NVL(MAX(R.RAN_CLAVE),0)+1 INTO V_CLAVE FROM CAP_RANGO R;
    :NEW.RAN_CLAVE:=V_CLAVE;
  END IF;
end TR_RANGO;
/
