class RenombraCampoEstadoobs < ActiveRecord::Migration[6.0]
  def change
    rename_column :observacion, :estado_id, :estadoobs_id
  end
end
