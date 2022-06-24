class RenombraTablaObservacion < ActiveRecord::Migration[7.0]
  def change
    rename_table :observacion, :sip_solicitud
    rename_column :sip_solicitud, :observacion, :solicitud
    rename_table :usuarionotificar_observacion, :sip_solicitud_usuarionotificar
    rename_column :sip_solicitud_usuarionotificar, :observacion_id, :solicitud_id
    rename_table :actividad_observacion, :actividad_solicitud
    rename_column :actividad_solicitud, :observacion_id, :solicitud_id
  end
end
