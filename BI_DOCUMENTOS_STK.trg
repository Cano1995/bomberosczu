create or replace trigger "BI_DOCUMENTOS_STK"
  before insert on "DOCUMENTOS_STK"               
  for each row  
begin   
  if :NEW."DOCS_CLAVE" is null then 
    select "DOCUMENTOS_STK_SEQ".nextval into :NEW."DOCS_CLAVE" from sys.dual; 
    :new.docs_fec_grab:=sysdate;
  end if; 
end; 
/
