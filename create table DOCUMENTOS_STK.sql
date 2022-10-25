-- Create table
create table DOCUMENTOS_STK
(
  docs_clave     NUMBER not null,
  docs_nro       NUMBER not null,
  docs_tipo_oper NUMBER not null,
  docs_fecha     DATE not null,
  docs_login     VARCHAR2(10) not null,
  docs_estado    VARCHAR2(1) not null,
  docs_fec_grab  TIMESTAMP(6) WITH LOCAL TIME ZONE
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table DOCUMENTOS_STK
  add constraint DOCUMENTOS_STK_PK primary key (DOCS_CLAVE);
