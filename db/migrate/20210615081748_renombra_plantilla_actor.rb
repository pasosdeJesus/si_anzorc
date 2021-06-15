class RenombraPlantillaActor < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      UPDATE heb412_gen_plantillahcm SET 
        ruta=replace(ruta, 'actoressociales', 'orgsociales') 
        WHERE ruta LIKE '%actoressociales%';
    SQL
  end
  def down
    execute <<-SQL
      UPDATE heb412_gen_plantillahcm SET 
        ruta=replace(ruta, 'orgsociales', 'actoressociales') 
        WHERE ruta LIKE '%orgsociales%';
    SQL
  end
end
