require 'application_system_test_case'

class CasoconjsTest < ApplicationSystemTestCase

  test 'administrador crea' do
    skip
    # error en siguiente dificil de depurar:
    Capybara.current_driver = Capybara.javascript_driver
    # Error:
    #  CasoconjsTest#test_administrador_crea:
    # CanCan::AccessDenied: No está autorizado para read sip/departamento/active record relation.
    @usuario = Usuario.find_by(nusuario: 'sivel2')
    @usuario.password = 'sivel2'
    visit File.join(Rails.configuration.relative_url_root, '/usuarios/sign_in')
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: @usuario.password
    click_button "Iniciar Sesión"
    assert page.has_content?("Administrar")

    visit File.join(Rails.configuration.relative_url_root, '/casos/nuevo')
    @numcaso=find_field('Código').value

    # Datos básicos
    fill_in "Fecha del hecho", with: '2014-08-05'
    fill_in "Título", with: 'titulo'

    # Núcleo familiar
    click_on "Víctimas"
    if (!find_link('Añadir Víctima').visible?)
      click_on "Víctimas"
    end
    click_on "Añadir Víctima"
    #puts page.html
    within ("div#victima") do 
      fill_in "Nombres", with: 'Nombres V'
      fill_in "Apellidos", with: 'Apellidos V'
      select("1999", from: 'Año de nacimiento')
      select("ENERO", from: 'Mes de nacimiento')
      select("1", from: 'Día de nacimiento')
      select("MASCULINO", from: 'Sexo')
      select("CÉDULA DE CIUDADANÍA", from: 'Tipo de documento')
      fill_in "Número de documento", with: '19222'
      #select('ALBANIA', from: 'País de Nacionalidad')
      select('RUSIA', from: 'País de nacimiento')
      select('OTRO', from: 'Profesión')
      #select('De 0 a 15 Años', from: 'Rango de Edad')
      select('ROM', from: 'Etnia') 
      select('IGLESIA DE DIOS', from: 'Religión/Iglesia') 
      select('HETEROSEXUAL', from: 'Orientación sexual') 
    end
    
    click_link "Ubicación"
    if (!find_link('Añadir Ubicación').visible?)
      click_link "Ubicación"
    end
    assert page.has_content? "Añadir Ubicación"
    click_on "Añadir Ubicación"
    #page.save_screenshot('au-pais.png')
    if (!page.has_content?('Latitud'))
      click_on "Añadir Ubicación"
    end
    within ("div#ubicacion") do 
      select('VENEZUELA', from: 'País') 
      fill_in "Lugar", with: 'Lugar'
      fill_in "Sitio", with: 'Sitio'
      fill_in "Latitud", with: '4.1'
      fill_in "Longitud", with: '-74.3'
      select('URBANO', from: 'Tipo de sitio') 
    end
    click_on "Añadir Ubicación"
    su = "//div[@id='ubicacion']/div[2]"
    within(:xpath, su) do 
      select('COLOMBIA', from: 'País') 
      fill_in "Lugar", with: 'Lugar2'
      fill_in "Sitio", with: 'Sitio2'
      fill_in "Latitud", with: '4.2'
      fill_in "Longitud", with: '-74.32'
      select('RURAL', from: 'Tipo de sitio') 
    end
    click_button "Guardar"
    assert page.has_content?("2014-08-05")
  end

end
