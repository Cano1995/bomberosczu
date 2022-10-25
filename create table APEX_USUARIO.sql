-- Create table
create table APEX_USUARIO
(
  id         NUMBER not null,
  usuario    VARCHAR2(255),
  email      VARCHAR2(255),
  password   VARCHAR2(255),
  roles      VARCHAR2(255),
  created    DATE not null,
  created_by VARCHAR2(255) not null,
  updated    DATE not null,
  updated_by VARCHAR2(255) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table APEX_USUARIO
  add constraint APEX_USUARIO_ID_PK primary key (ID);
alter index APEX_USUARIO_ID_PK nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on APEX_USUARIO to PUBLIC;
