class QuitaNotNullFechaformulacion < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      ALTER TABLE cor1440_gen_proyectofinanciero 
        ALTER COLUMN fechaformulacion DROP NOT NULL;
    SQL
  end
  def down
    execute <<-SQL
      ALTER TABLE cor1440_gen_proyectofinanciero 
        ALTER COLUMN fechaformulacion SET NOT NULL;
    SQL
  end
end
