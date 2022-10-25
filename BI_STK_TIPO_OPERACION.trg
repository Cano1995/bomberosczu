create or replace trigger "BI_STK_TIPO_OPERACION"
  before insert on "STK_TIPO_OPERACION"               
  for each row  
begin   
  if :NEW."OPER_CLAVE" is null then 
    select "STK_TIPO_OPERACION_SEQ".nextval into :NEW."OPER_CLAVE" from sys.dual; 
  end if; 
end; 
/
