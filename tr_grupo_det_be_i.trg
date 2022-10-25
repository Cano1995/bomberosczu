create or replace trigger tr_grupo_det_be_i
  before insert
  on CAP_GRUPO_GUARDIA_DET 
  for each row
declare
  -- local variables here
begin
  if :new.grud_item is null then
    select nvl(max(d.grud_item),0)+1 into :new.grud_item from CAP_GRUPO_GUARDIA_DET d where d.grud_clave=:new.grud_clave;
    :new.grud_estado:=1;
  end if;
end tr_grupo_det_be_i;
/
