-- Create table
create table DOCUMENTOS_STK_DET
(
  docd_clave    NUMBER not null,
  docd_articulo NUMBER not null,
  docd_cantidad NUMBER not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table DOCUMENTOS_STK_DET
  add constraint PKS_DOCUMENTO_DET primary key (DOCD_CLAVE, DOCD_ARTICULO);
alter table DOCUMENTOS_STK_DET
  add constraint FKS_ARTICULO_DOCUMENTO foreign key (DOCD_ARTICULO)
  references STK_ARTICULO (ART_CLAVE);
alter table DOCUMENTOS_STK_DET
  add constraint FKS_DOCUMENTO_DET foreign key (DOCD_CLAVE)
  references DOCUMENTOS_STK (DOCS_CLAVE);
