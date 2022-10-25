create or replace trigger CAP_GRU_GUARDIA_BE_I
  before insert
  on CAP_GRUPO_GUARDIA 
  for each row
declare
  -- local variables here
begin
  IF :NEW.GRU_CLAVE IS NULL THEN
    SELECT SEQ_GRUPO.NEXTVAL INTO :NEW.GRU_CLAVE FROM DUAL;
  
  END IF;
  :new.gru_fec_grab:=sysdate;
end CAP_GRU_GUARDIA_BE_I;
/
