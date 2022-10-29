-- Create table
create table STK_MOV_COMPARTIMENTO
(
  com_movil_clave NUMBER not null,
  com_item        NUMBER not null,
  com_nombre      VARCHAR2(50) not null,
  com_observacion VARCHAR2(250)
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table STK_MOV_COMPARTIMENTO
  add constraint XPK_CLAVE_COMPARTIMENTO primary key (COM_MOVIL_CLAVE, COM_NOMBRE);
alter table STK_MOV_COMPARTIMENTO
  add constraint XFK_MOVIL_COMPARTIMIENTO foreign key (COM_MOVIL_CLAVE)
  references STK_MOVILES (MOV_CLAVE);
