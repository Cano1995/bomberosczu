create or replace trigger tr_calificacion_bi
  before insert
  on CAP_CALIFICACION 
  for each row
declare
  -- local variables here
begin
    select SEQ_CAP_CALIFICACION.nextval into :NEW.CAL_CLAVE from sys.dual; 
 
end tr_calificacion_bi;
/
