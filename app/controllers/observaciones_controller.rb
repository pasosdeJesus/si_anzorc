# encoding: UTF-8

class ObservacionesController < Heb412Gen::ModelosController
  before_action :set_observacion,
    only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  class: ::Observacion

  def clase 
    "::Observacion"
  end

  def set_observacion
    @basica = Observacion.find(params[:id])
  end

  def atributos_index
    [
      :id, 
      :usuario_id, 
      :fecha,
      :observacion,
      :estado_id,
      :usuarionotificar_ids
    ]
  end

  def atributos_form
    [
      :id, 
      :usuario_id, 
      :fecha,
      :observacion,
      :estado_id,
      :usuarionotificar_ids
    ]
  end

  def genclase
    'F'
  end

  def params_lista
    atributos_form
  end

  def observacion_params
    params.require(:observacion).permit(params_lista)
  end

end
