-- Create table
create table CAP_DIAS
(
  dia_clave  NUMBER,
  dia_nombre VARCHAR2(250)
)
-- Add/modify columns 
alter table CAP_DIAS add dia_tipo number;
-- Add comments to the columns 
comment on column CAP_DIAS.dia_tipo
  is '1=DIURNO, 2= NOCTURNO';
