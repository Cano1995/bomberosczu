-- Create table
create table CAP_MARCACION
(
  mar_clave    NUMBER not null,
  mar_persona  NUMBER not null,
  mar_hora_mar DATE default sysdate not null,
  mar_tipo     VARCHAR2(1)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_MARCACION
  add constraint CAP_MARCACION_PK primary key (MAR_CLAVE);
