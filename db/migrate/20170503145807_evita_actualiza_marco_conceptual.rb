class EvitaActualizaMarcoConceptual < ActiveRecord::Migration[5.0]
  def up
    # Nada solo evitamos la que viene de sivel2_gen
    execute <<-SQL
    INSERT INTO schema_migrations VALUES ('20170503145808');
    SQL
  end
  def down
    execute <<-SQL
    DELETE FROM schema_migrations WHERE version='20170503145808';
    SQL
  end
end
