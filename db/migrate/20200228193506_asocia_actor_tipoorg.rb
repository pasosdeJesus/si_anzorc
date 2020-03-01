class AsociaActorTipoorg < ActiveRecord::Migration[6.0]
  def change
    add_column :sip_actorsocial, :tipoorganzorc_id, :integer
    add_foreign_key :sip_actorsocial, :tipoorganzorc, column: :tipoorganzorc_id
  end
end
