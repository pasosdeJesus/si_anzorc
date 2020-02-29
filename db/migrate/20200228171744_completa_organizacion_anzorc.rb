class CompletaOrganizacionAnzorc < ActiveRecord::Migration[6.0]
  def change
    add_column :sip_actorsocial, :nit, :string, limit: 500
    add_column :sip_actorsocial, :numasociados, :integer
    add_column :sip_actorsocial, :numasociadas, :integer
    add_column :sip_actorsocial, :carpeta, :string, limit: 5000
  end
end
