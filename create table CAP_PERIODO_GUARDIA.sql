-- Create table
create table CAP_PERIODO_GUARDIA
(
  perg_clave   NUMBER not null,
  perg_fec_ini DATE not null,
  perg_fec_fin DATE not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_PERIODO_GUARDIA
  add constraint CAP_PERIODO_GUARDIA_PK primary key (PERG_CLAVE);
--
-- Add/modify columns 
alter table CAP_PERIODO_GUARDIA add perg_can_guard number;
-- Add comments to the columns 
comment on column CAP_PERIODO_GUARDIA.perg_can_guard
  is 'CANTIDAD DE GUARDIAS POR SEMANA';
-- Add/modify columns 
alter table CAP_PERIODO_DIAS modify dia_hora_entrada date default to_DATE('01/01/2018 07:00:00','DD/MM/YYYY HH24:MI:SS');
-- Add/modify columns 
alter table CAP_PERIODO_DIAS modify dia_hora_salida date default to_DATE('01/01/2018 07:00:00','DD/MM/YYYY HH24:MI:SS');
