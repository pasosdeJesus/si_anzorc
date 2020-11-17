class AgregaFresolucionAZrc < ActiveRecord::Migration[6.0]
  def change
    add_column :zrc, :fresolucion, :date
  end
end
