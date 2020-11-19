class AgregaIdentificacionAUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuario, :tdocumento_id, :integer
    add_column :usuario, :numerodocumento, :string
    add_foreign_key :usuario, :sip_tdocumento, column: :tdocumento_id
  end
end
