-- Create table
create table CAP_GRUPO_GUARDIA_DET
(
  grud_clave   NUMBER not null,
  grud_persona NUMBER,
  grud_estado  VARCHAR2(1),
  grud_item    NUMBER not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_GRUPO_GUARDIA_DET
  add constraint PKGD_CLAVE primary key (GRUD_CLAVE, GRUD_ITEM);
alter index PKGD_CLAVE nologging;
alter table CAP_GRUPO_GUARDIA_DET
  add constraint FK_G_CLAVE foreign key (GRUD_CLAVE)
  references CAP_GRUPO_GUARDIA (GRU_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA_DET to PUBLIC;
