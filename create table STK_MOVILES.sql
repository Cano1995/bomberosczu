-- Create table
create table STK_MOVILES
(
  mov_clave  NUMBER not null,
  mov_nombre VARCHAR2(150) not null,
  mov_abrev  VARCHAR2(20) not null,
  mov_marca  VARCHAR2(50) not null,
  mov_chapa  VARCHAR2(50) not null,
  mov_anho_fab VARCHAR2(5) not null,
  mov_estado NUMBER not null
)

-- Create/Recreate primary, unique and foreign key constraints 
alter table STK_MOVILES
  add constraint STK_MOVILES_PK primary key (MOV_CLAVE);


/
-- Add/modify columns 
alter table STK_MOVILES add mov_fech_adquisicion date;
-- Add comments to the columns 
comment on column STK_MOVILES.mov_fech_adquisicion
  is 'fecha en la institucion adquirio el movil';
