-- Create table
create table CAP_CALIFIC_DET_TMP
(
  cald_clave       NUMBER,
  cald_item        VARCHAR2(200),
  cald_crit        NUMBER,
  cald_puntaje     NUMBER,
  cald_observacion VARCHAR2(250)
);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_CALIFIC_DET_TMP to PUBLIC;
