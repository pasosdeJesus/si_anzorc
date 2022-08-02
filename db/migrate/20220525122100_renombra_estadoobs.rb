class RenombraEstadoobs < ActiveRecord::Migration[7.0]
  def change
    rename_table :estadoobs, :sip_estadosol
    rename_column :observacion, :estadoobs_id, :estadosol_id
  end
end
