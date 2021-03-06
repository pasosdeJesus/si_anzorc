class CreaCamposProyectoBasicos < ActiveRecord::Migration[6.0]
  def up
    add_column :cor1440_gen_proyectofinanciero, :fechaformulacion, :date, 
       default: 'now'
    execute <<-SQL
      UPDATE cor1440_gen_proyectofinanciero SET fechaformulacion=NOW() WHERE
        fechaformulacion IS NULL;
      ALTER TABLE cor1440_gen_proyectofinanciero ALTER COLUMN
        fechaformulacion SET NOT NULL;
    SQL
    add_column :cor1440_gen_proyectofinanciero, :fechaaprobacion, :date
    add_column :cor1440_gen_proyectofinanciero, :fechaliquidacion, :date
    add_column :cor1440_gen_proyectofinanciero, :estado, :string, limit: 1 , default: 'E'
    add_column :cor1440_gen_proyectofinanciero, :dificultad, :string, limit: 1, default: 'N'
  end

  def down
    remove_column :cor1440_gen_proyectofinanciero, :fechaformulacion, :date, 
      null: false, default: 'now'
    remove_column :cor1440_gen_proyectofinanciero, :fechaaprobacion, :date
    remove_column :cor1440_gen_proyectofinanciero, :fechaliquidacion, :date
    remove_column :cor1440_gen_proyectofinanciero, :estado, :string, limit: 1 , default: 'E'
    remove_column :cor1440_gen_proyectofinanciero, :dificultad, :string, limit: 1, default: 'N'

  end
end
