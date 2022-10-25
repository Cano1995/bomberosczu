-- Create table
create table APEX_ROL
(
  id          NUMBER not null,
  nombre      VARCHAR2(255),
  descripcion VARCHAR2(255),
  created     DATE not null,
  created_by  VARCHAR2(255) not null,
  updated     DATE not null,
  updated_by  VARCHAR2(255) not null
)
tablespace APEX_3200540589736334
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table APEX_ROL
  add constraint APEX_ROL_ID_PK primary key (ID)
  using index 
  tablespace APEX_3200540589736334
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter index APEX_ROL_ID_PK nologging;
-- Grant/Revoke object privileges 
grant select, insert, update, delete on APEX_ROL to PUBLIC;
