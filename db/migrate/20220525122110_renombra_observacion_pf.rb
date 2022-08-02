class RenombraObservacionPf < ActiveRecord::Migration[7.0]
  def change
    rename_table :observacion_proyectofinanciero, :proyectofinanciero_solicitud
    rename_column :proyectofinanciero_solicitud, :observacion_id, :solicitud_id
#    rename_table :observacion_usuarionotificar, :sip_solicitud_usuarionotificar
#    rename_column :sip_solicitud_usuarionotificar, :observacion_id, :solicitud_id
  end
end
