class LlenaEstadoobs < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      INSERT INTO public.estadoobs (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) 
        VALUES (1, 'POR REVISAR', null, '2020-11-24', null, '2020-11-24', '2020-11-24');
      INSERT INTO public.estadoobs (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) 
        VALUES (2, 'REVISADO', null, '2020-11-24', null, '2020-11-24', '2020-11-24');
      SELECT setval('public.estadoobs_id_seq', 100);
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM public.estadoobs WHERE id>='1' AND id<='2'
    SQL
  end
end
