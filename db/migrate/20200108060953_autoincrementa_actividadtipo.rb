class AutoincrementaActividadtipo < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      ALTER TABLE cor1440_gen_actividadtipo 
        ALTER COLUMN id 
          SET DEFAULT nextval('cor1440_gen_actividadtipo_id_seq');
    SQL
  end

  def down
  end
end
