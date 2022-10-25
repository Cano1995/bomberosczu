create or replace trigger "BI_CAP_PERIODO_GUARDIA"
  before insert on "CAP_PERIODO_GUARDIA"               
  for each row  
begin   
  if :NEW."PERG_CLAVE" is null then 
    select "CAP_PERIODO_GUARDIA_SEQ".nextval into :NEW."PERG_CLAVE" from sys.dual; 
  end if; 
end; 
/
