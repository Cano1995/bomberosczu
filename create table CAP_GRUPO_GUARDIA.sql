-- Create table
create table CAP_GRUPO_GUARDIA
(
  gru_clave       NUMBER not null,
  gru_jefe        NUMBER,
  gru_estado      VARCHAR2(1),
  gru_fec_ini     DATE,
  gru_fec_grab    DATE default SYSDATE,
  gru_nro_guardia NUMBER,
  gru_observacion VARCHAR2(250),
  gru_periodo     NUMBER
);
-- Add comments to the columns 
comment on column CAP_GRUPO_GUARDIA.gru_periodo
  is 'codigo de periodo en el cual pernetece el grupo ';
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_GRUPO_GUARDIA
  add constraint PKG_GRUPO primary key (GRU_CLAVE);
alter index PKG_GRUPO nologging;
alter table CAP_GRUPO_GUARDIA
  add constraint FK_PERIODO_GRUPO foreign key (GRU_PERIODO)
  references CAP_PERIODO_GUARDIA (PERG_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA to PUBLIC;
