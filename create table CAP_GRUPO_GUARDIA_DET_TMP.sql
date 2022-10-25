-- Create table
create table CAP_GRUPO_GUARDIA_DET_TMP
(
  grud_clave   NUMBER,
  grud_persona NUMBER,
  grud_estado  VARCHAR2(1),
  grud_item    VARCHAR2(20),
  grud_user    VARCHAR2(20),
  grud_sesion  VARCHAR2(250)
);
-- Grant/Revoke object privileges 
grant select, insert, update, delete on CAP_GRUPO_GUARDIA_DET_TMP to PUBLIC;
