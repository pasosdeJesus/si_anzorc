class AsociaActorNivelorg < ActiveRecord::Migration[6.0]
  def change
    add_column :sip_actorsocial, :nivelorganzorc_id, :integer
    add_foreign_key :sip_actorsocial, :nivelorganzorc, column: :nivelorganzorc_id
  end
end
