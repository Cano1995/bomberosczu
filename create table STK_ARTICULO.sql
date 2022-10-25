-- Create table
create table STK_ARTICULO
(
  art_clave       NUMBER not null,
  art_nombre      VARCHAR2(250) not null,
  art_abreviatura VARCHAR2(50),
  art_tipo        NUMBER not null,
  art_estado      VARCHAR2(1) not null,
  art_origen      VARCHAR2(1) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table STK_ARTICULO
  add constraint STK_ARTICULO_PK primary key (ART_CLAVE);
