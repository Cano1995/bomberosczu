-- Create table
create table CAP_PERSONAS
(
  per_clave         NUMBER not null,
  per_nombre        VARCHAR2(100),
  per_apellido      VARCHAR2(100),
  per_ci            NUMBER,
  per_celular       VARCHAR2(20),
  per_direccion     VARCHAR2(200),
  per_estado_civil  VARCHAR2(1),
  per_fecha_nac     DATE,
  per_fecha_ingreso DATE default SYSDATE,
  per_rango         NUMBER,
  per_tipo_v        NUMBER,
  per_estado        VARCHAR2(1),
  per_identidad     NUMBER,
  per_ind_usuario   VARCHAR2(1) default 'S'
);
-- Add comments to the columns 
comment on column CAP_PERSONAS.per_ind_usuario
  is 'INDICA SI SE VA A CREAR UN USUARIO DE SISTEMA PARA LA PERSONA';
-- Create/Recreate primary, unique and foreign key constraints 
alter table CAP_PERSONAS
  add constraint XPK_PERSONAS primary key (PER_CLAVE);
alter table CAP_PERSONAS
  add constraint FK_RANGO_PERSONA foreign key (PER_RANGO)
  references CAP_RANGO (RAN_CLAVE);
alter table CAP_PERSONAS
  add constraint FK_TIPO_PERSONA foreign key (PER_TIPO_V)
  references CAP_TIPO_PERSONA (VOL_TCLAVE);
