require 'sivel2_gen/version'

Sip.setup do |config|
  config.ruta_anexos = (ENV['SIP_RUTA_ANEXOS'] || 
                        "#{Rails.root}/archivos/anexos/")
  config.ruta_volcados = (ENV['SIP_RUTA_VOLCADOS'] || 
                          "#{Rails.root}/archivos/bd/")
  # En heroku los anexos son super-temporales
  if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "SINZRC #{Sivel2Gen::VERSION}"
end
