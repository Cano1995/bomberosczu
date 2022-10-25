-- Create table
create table TIPO_GUARDIA
(
  tgua_clave       NUMBER not null,
  tgua_nom         VARCHAR2(50),
  tgua_descripcion VARCHAR2(250)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table TIPO_GUARDIA
  add constraint PK_TIP_GUARDIA primary key (TGUA_CLAVE);
