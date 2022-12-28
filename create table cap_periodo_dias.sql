-- Create table
create table cap_periodo_dias
(
  dia_clave        number,
  dia_nombre       number,
  dia_hora_entrada date,
  dia_hora_salida  date
)
;
-- Create/Recreate primary, unique and foreign key constraints 
alter table cap_periodo_dias
  add constraint xpk_peri_dia primary key (DIA_CLAVE, DIA_NOMBRE);
alter table cap_periodo_dias
  add constraint fks_peri_dia foreign key (DIA_CLAVE)
  references cap_periodo_guardia (PERG_CLAVE);
