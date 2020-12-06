# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
#require File.join(
#          Gem::Specification.find_by_name("sip").gem_dir, 
#          'config/initializers/inflections')
ActiveSupport::Inflector.inflections do |inflect|
	inflect.irregular 'nodo', 'nodos'
	inflect.irregular 'zrc', 'zrcs'
	inflect.irregular 'zx', 'zsx'
  inflect.irregular 'nivelorganzorc', 'nivelesorganzorc'
  inflect.irregular 'tipoorganzorc', 'tiposorganzorc'
  inflect.irregular 'estadoobs', 'estadosobs'

  # No se puso en orden porque la rregla de zrc estaba teniendo precedencia
	inflect.irregular 'estadozrc', 'estadoszrc'
end
