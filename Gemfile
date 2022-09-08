source 'https://rubygems.org'

ruby '>=2.7.1'


gem 'apexcharts'

gem 'bcrypt'

gem 'bigdecimal'

gem 'babel-transpiler'

gem 'bootsnap', '>=1.1.0', require: false

gem 'cancancan'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' # CoffeeScript para recuersos .js.coffee y vistas

gem 'color'

gem 'devise' # Autenticación 

gem 'devise-i18n'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'jsbundling-rails'

gem 'kt-paperclip',                 # Anexos
  git: 'https://github.com/kreeti/kt-paperclip.git'

gem 'libxml-ruby'

gem 'odf-report' # Genera ODT

gem 'nokogiri', '>=1.11.1'

gem 'parslet'

gem 'pg' # Postgresql

gem 'puma'

gem 'prawn' # Generación de PDF

gem 'prawnto_2',  :require => 'prawnto'

gem 'prawn-table'

gem 'rails', '~> 7.0'

gem 'rails-i18n'

gem 'react-rails'

gem 'redcarpet'

gem 'rspreadsheet'

gem 'rubyzip', '>=2.0.0'

gem 'sassc-rails' # CSS

gem 'simple_form' # Formularios simples 

gem 'sprockets-rails'

gem 'stimulus-rails'

gem 'turbo-rails', '~> 1.0'

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'will_paginate' # Listados en páginas


#####
# Motores que se sobrecargan vistas (deben ponerse en orden de apilamiento 
# lógico y no alfabetico como las gemas anteriores) 

gem 'sip', # Motor generico
  git: 'https://github.com/pasosdeJesus/sip.git', branch: :main
  #path: '../sip'

gem 'mr519_gen', # Motor de gestion de formularios y encuestas
  git: 'https://github.com/pasosdeJesus/mr519_gen.git', branch: :main
  #path: '../mr519_gen'

gem 'heb412_gen',  # Motor de nube y llenado de plantillas
  git: 'https://github.com/pasosdeJesus/heb412_gen.git', branch: :main
  #path: '../heb412_gen'

gem 'cor1440_gen', # Motor para manejo de actividades y proyectos con marco lógico
  git: 'https://github.com/pasosdeJesus/cor1440_gen.git', branch: :main
  #path: '../cor1440_gen'

gem 'sivel2_gen', # Motor para manejo de casos
  git: 'https://github.com/pasosdeJesus/sivel2_gen.git', branch: :main
  #path: '../sivel2_gen'



group :development do
  gem 'web-console'  # Consola irb en páginas con excepciones o usando <%= console %> en vistas
end


group :development, :test do
  
  gem 'debug' # Depurar

  gem 'colorize' # Color en terminal

  gem 'dotenv-rails'

end


group :test do
  gem 'cuprite'

  gem 'capybara'

  gem 'selenium-webdriver'

  gem 'simplecov', '<0.18' # Debido a https://github.com/codeclimate/test-reporter/issues/418

  gem 'spring' # Acelera ejecutando en fondo.  

end


group :production do
  
  gem 'unicorn' # Para despliegue

end
