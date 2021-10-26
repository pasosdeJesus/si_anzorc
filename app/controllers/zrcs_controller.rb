class ZrcsController < Heb412Gen::ModelosController
  before_action :set_zrc, 
    only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  class: ::Zrc

  def clase 
    "::Zrc"
  end

  def set_zrc
    @basica = Zrc.find(params[:id])
  end

  def atributos_index
    [
      :id, 
      :nombre, 
      :estadozrc,
      :carpeta,
      :nresolucion,
      :fresolucion,
      :geojson,
      :habilitado
    ]
  end

  def atributos_form
    [
      :nombre, 
      :estadozrc,
      :carpeta,
      :geojson,
      :nresolucion,
      :observaciones,
      :fresolucion,
      :fechacreacion,
      :fechadeshabilitacion
    ]
  end

  def genclase
    'M'
  end

  def params_lista
    atributos_form - [:estadozrc] + [:estadozrc_id]
  end

  def zrc_params
    params.require(:zrc).permit(params_lista)
  end

end
