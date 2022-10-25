-- Create table
create table STK_TIPO_OPERACION
(
  oper_clave       NUMBER not null,
  oper_descripcion VARCHAR2(50) not null,
  oper_ind_sr      VARCHAR2(1) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table STK_TIPO_OPERACION
  add constraint STK_TIPO_OPERACION_PK primary key (OPER_CLAVE);
