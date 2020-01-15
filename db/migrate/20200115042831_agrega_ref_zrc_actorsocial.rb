class AgregaRefZrcActorsocial < ActiveRecord::Migration[6.0]
  def change
    add_column :sip_actorsocial, :zrc_id, :integer
    add_foreign_key :sip_actorsocial, :zrc, column: :zrc_id
  end
end
