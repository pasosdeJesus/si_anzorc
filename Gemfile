source 'https://rubygems.org'

ruby '>=2.4'



gem 'bcrypt'

gem 'bigdecimal'

gem 'bootsnap', '>=1.1.0', require: false

gem 'bootstrap-datepicker-rails', '>= 1.8.0.1'

gem 'cancancan'

gem 'chosen-rails', git: 'https://github.com/vtamara/chosen-rails.git', branch: 'several-fixes'

gem 'cocoon', git: 'https://github.com/vtamara/cocoon.git', branch: 'new_id_with_ajax' # Formularios anidados (algunos con ajax)

gem 'coffee-rails' , '>= 5.0.0' # CoffeeScript para recuersos .js.coffee y vistas

gem 'colorize' # Color en terminal

# Motor cor1440_gen
gem 'cor1440_gen', git: 'https://github.com/pasosdeJesus/cor1440_gen.git'
#gem 'cor1440_gen', path: '../cor1440_gen'    

gem 'devise' , '>= 4.7.1' # Autenticación 

gem 'devise-i18n', '>= 1.8.2'

gem 'font-awesome-rails', '>= 4.7.0.5'

# Motor para manejar archivos como nube y plantillas
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git'
#gem 'heb412_gen', path: '../heb412_gen/'

gem 'jbuilder' # API JSON facil. Ver: https://github.com/rails/jbuilder

gem 'jquery-rails' , '>= 4.3.5' # jquery como librería JavaScript

gem 'jquery-ui-rails', '>= 6.0.1'

gem 'libxml-ruby'

# Motor para formularios
gem 'mr519_gen', git: 'https://github.com/pasosdeJesus/mr519_gen.git'
#gem 'mr519_gen', path: '../mr519_gen/'

gem 'odf-report' , '>= 0.6.1' # Genera ODT

gem 'paperclip' # Maneja adjuntos

gem 'pg' # Postgresql

gem 'pick-a-color-rails' , '>= 0.0.1' # Facilita elegir colores en tema

gem 'puma'

gem 'prawn' # Generación de PDF

gem 'prawnto_2', '>= 0.3.0'

gem 'prawn-table'

gem 'rails', '~> 6.0.0.0'

gem 'rails-i18n', '>= 6.0.0'

gem 'redcarpet'

gem 'rspreadsheet'

gem 'rubyzip', '>=2.0.0'

gem 'sass' # CSS

gem 'simple_form' , '>= 5.0.1' # Formularios simples 

# Motor de SIVeL 2
gem 'sip', git: 'https://github.com/pasosdeJesus/sip.git'
#gem 'sip', path: '../sip'

# Motor sivel2_gen
gem 'sivel2_gen', git: 'https://github.com/pasosdeJesus/sivel2_gen.git'
#gem 'sivel2_gen', path: '../sivel2_gen'

gem 'tiny-color-rails', '>= 0.0.2'

gem 'turbolinks' # Seguir enlaces más rápido. 

gem 'twitter-bootstrap-rails' , '>= 3.2.2' # Ambiente de CSS

gem 'twitter_cldr' # ICU con CLDR

gem 'tzinfo' # Zonas horarias

gem 'uglifier' # Uglifier comprime recursos Javascript

gem 'webpacker' , '>= 4.0.7'

gem 'will_paginate' # Listados en páginas



group :development do

  gem 'web-console'  , '>= 4.0.1' # Consola irb en páginas con excepciones o usando <%= console %> en vistas

end


group :development, :test do
  
  #gem 'byebug' # Depurar

end


group :test do
  
  gem 'capybara', '>= 3.29.0'

  gem 'selenium-webdriver'

  gem 'simplecov'
  
  gem 'spring' # Acelera ejecutando en fondo.  

end


group :production do
  
  gem 'unicorn' # Para despliegue

end
