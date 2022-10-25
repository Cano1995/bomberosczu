-- Create table
create table CAP_TIPO_PERSONA
(
  vol_tclave        NUMBER not null,
  vol_t_descripcion VARCHAR2(250),
  vol_t_nombre      VARCHAR2(100)
);
-- Add comments to the columns 
comment on column CAP_TIPO_PERSONA.vol_tclave
  is 'clave del tipo de documento ';
comment on column CAP_TIPO_PERSONA.vol_t_descripcion
  is 'descripcion del tipo de voluntario (voluntario, rentado)';
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_TIPO_PERSONA
  add constraint XPK_T_PERSONA primary key (VOL_TCLAVE);
alter index XPK_T_PERSONA nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_TIPO_PERSONA to PUBLIC;
