-- Create table
create table CAP_CRITERIOS_EVAL
(
  cri_clave       NUMBER not null,
  cri_descripcion VARCHAR2(250),
  cri_nombre      VARCHAR2(50)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_CRITERIOS_EVAL
  add constraint PK_CRITERIO primary key (CRI_CLAVE);
alter index PK_CRITERIO nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_CRITERIOS_EVAL to PUBLIC;
