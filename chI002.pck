create or replace package chI002 is

  -- Author  : APEX
  -- Created : 09/10/2020 17:45:09
  -- Purpose : 

  -- Public type declarations
  procedure pp_insertar_grupos(i_jefe        in number,
                               i_fec_ini     in date,
                               i_nro_guardia in number,
                               i_observacion in varchar2,
                               i_user        in varchar2,
                               i_session     in varchar2);
end chI002;
/
create or replace package body chI002 is

  procedure pp_insertar_grupos(i_jefe        in number,
                               i_fec_ini     in date,
                               i_nro_guardia in number,
                               i_observacion in varchar2,
                               i_user        in varchar2,
                               i_session     in varchar2) as
    V_CLAVE NUMBER := 0;
    V_ITEM NUMBER:=0;
  begin
    select NVL(MAX(gru_clave), 0) + 1 INTO V_CLAVE from cap_grupo_guardia;
    insert into cap_grupo_guardia
      (gru_clave,
       gru_jefe,
       gru_estado,
       gru_fec_ini,
       gru_fec_grab,
       gru_nro_guardia,
       gru_observacion)
    values
      (V_CLAVE,
       I_jefe,
       'A',
       I_fec_ini,
       SYSDATE,
       I_nro_guardia,
       I_observacion);
     FOR I IN (select * from cap_grupo_guardia_det_tmp T WHERE T.GRUD_SESION=i_session AND T.GRUD_USER=i_user)
       LOOP
         V_ITEM:=V_ITEM+1;
         insert into cap_grupo_guardia_det
           (grud_clave, grud_persona, grud_estado, grud_item)
         values
           (V_CLAVE, I.GRUD_PERSONA, 'A', V_ITEM);

       END LOOP;
       DELETE from cap_grupo_guardia_det_tmp T WHERE T.GRUD_SESION=i_session AND T.GRUD_USER=i_user;
  COMMIT;
  end;
end chI002;
/
