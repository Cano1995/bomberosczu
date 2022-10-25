create or replace package CHI001 is

  -- Author  : APEX
  -- Created : 08/10/2020 17:54:06
  -- Purpose : 

  -- Public type declarations
  PROCEDURE PP_INSERTAR_CALIFICACION(I_PERSONA IN NUMBER,
                                     I_fecha   IN DATE,
                                     I_OBS     IN VARCHAR2,
                                     I_USER    IN VARCHAR2);

end CHI001;
/
create or replace package body CHI001 is

  -- Private type declarations
  PROCEDURE PP_INSERTAR_CALIFICACION(I_PERSONA IN NUMBER,
                                     I_fecha   IN DATE,
                                     I_OBS     IN VARCHAR2,
                                     I_USER    IN VARCHAR2) IS
  
    V_CLAVE NUMBER := 0;
    V_ITEM  NUMBER := 0;
  BEGIN
    SELECT NVL(MAX(C.CAL_CLAVE), 0) + 1
      INTO V_CLAVE
      FROM CAP_CALIFICACION C;
    insert into cap_calificacion
      (cal_clave, cal_persona, cal_fecha, cal_observacion, cal_user)
    values
      (V_CLAVE, I_PERSONA, I_fecha, I_OBS, I_USER);

    FOR I IN (select cald_clave,
                     cald_item,
                     cald_crit,
                     cald_puntaje,
                     cald_observacion
                from cap_calific_det_tmp) LOOP
      V_ITEM := V_ITEM + 1;
      insert into cap_calific_det
        (cald_clave, cald_item, cald_crit, cald_puntaje, cald_observacion)
      values
        (V_CLAVE, V_ITEM, I.CALD_CRIT, I.cald_puntaje, I.cald_observacion);

    END LOOP;
    DELETE FROM cap_calific_det_tmp;
    COMMIT;
  END;
end CHI001;
/
