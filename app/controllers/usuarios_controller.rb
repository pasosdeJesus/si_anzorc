# encoding: UTF-8

require 'sip/concerns/controllers/usuarios_controller'

class UsuariosController < Sip::ModelosController
  include Sip::Concerns::Controllers::UsuariosController

  def atributos_form
    r = [ 
      :nusuario,
      :nombre,
      :tdocumento,
      :numerodocumento,
      :descripcion,
      :rol,
      :email,
      :tema
    ]
    if can?(:manage, Sip::Grupo)
      r += [:sip_grupo]
    end
    r += [
      :idioma,
      :encrypted_password,
      :fechacreacion_localizada,
      :fechadeshabilitacion_localizada,
      :failed_attempts,
      :unlock_token,
      :locked_at
    ]
  end

  # Lista blanca de paramétros
  def usuario_params
    p = params.require(:usuario).permit(
      :id, :nusuario, :password, 
      :nombre, :tdocumento_id, :numerodocumento, :descripcion, :oficina_id,
      :rol, :idioma, :email, :tema_id, :encrypted_password, 
      :fechacreacion_localizada, :fechadeshabilitacion_localizada, 
      :reset_password_token, 
      :reset_password_sent_at, :remember_created_at, :sign_in_count, 
      :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, 
      :failed_attempts, :unlock_token, :locked_at,
      :last_sign_in_ip, :etiqueta_ids => [],
      :sip_grupo_ids => []
    )
    return p
  end
end
