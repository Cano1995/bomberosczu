create or replace trigger tr_cap_criterio_bi
  before insert
  on CAP_CRITERIOS_EVAL 
  for each row
declare
  -- local variables here
begin
  select nvl(max(e.cri_clave),0)-1 into :new.cri_clave from cap_criterios_eval e;
end tr_cap_criterio_bi;
/
