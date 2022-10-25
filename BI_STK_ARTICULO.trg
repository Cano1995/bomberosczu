create or replace trigger "BI_STK_ARTICULO"
  before insert on "STK_ARTICULO"               
  for each row  
begin   
  if :NEW."ART_CLAVE" is null then 
    select "STK_ARTICULO_SEQ".nextval into :NEW."ART_CLAVE" from sys.dual; 
  end if; 
end; 
/
