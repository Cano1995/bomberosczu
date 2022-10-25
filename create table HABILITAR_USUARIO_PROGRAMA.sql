-- Create table
create table HABILITAR_USUARIO_PROGRAMA
(
  id_programa NUMBER,
  id_usuario  NUMBER
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table HABILITAR_USUARIO_PROGRAMA
  add constraint XFK_USUARIO foreign key (ID_USUARIO)
  references APEX_USUARIO (ID);
