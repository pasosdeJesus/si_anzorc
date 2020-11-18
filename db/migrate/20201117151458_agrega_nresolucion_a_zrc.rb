class AgregaNresolucionAZrc < ActiveRecord::Migration[6.0]
  def change
    add_column :zrc, :nresolucion, :integer
  end
end
