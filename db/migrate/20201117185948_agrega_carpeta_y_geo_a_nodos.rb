class AgregaCarpetaYGeoANodos < ActiveRecord::Migration[6.0]
  def change
    add_column :nodo, :carpeta, :string 
    add_column :nodo, :geojson, :string 
  end
end
