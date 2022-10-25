-- Create table
create table CAP_CALIFIC_DET
(
  cald_clave       NUMBER not null,
  cald_item        NUMBER not null,
  cald_crit        NUMBER,
  cald_puntaje     NUMBER,
  cald_observacion VARCHAR2(250)
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255;
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_CALIFIC_DET
  add constraint PK_CALD_CLAVE primary key (CALD_CLAVE, CALD_ITEM)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255;
alter index PK_CALD_CLAVE nologging;
alter table CAP_CALIFIC_DET
  add constraint FK_CALD_ENCAB foreign key (CALD_CLAVE)
  references CAP_CALIFICACION (CAL_CLAVE);
alter table CAP_CALIFIC_DET
  add constraint FK_CRITERIO foreign key (CALD_CRIT)
  references CAP_CRITERIOS_EVAL (CRI_CLAVE);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_CALIFIC_DET to PUBLIC;
