# encoding: utf-8

require 'application_system_test_case'

class UsuarioTest < ApplicationSystemTestCase

  test "no autentica" do
    # En adJ 6.6
    # Selenium::WebDriver::Error::WebDriverError: chrome not reachable
    # (Session info: headless chrome=79.0.3945.117)
    # test/system/usuario_test.rb:11:in `block in <class:UsuarioTest>'
    skip
    usuario = Usuario.find_by(nusuario: 'sivel2') 
    visit File.join(Rails.configuration.relative_url_root, '/usuarios/sign_in') 
    fill_in "Usuario", with: usuario.nusuario
    fill_in "Clave", with: 'ERRADA' 
    click_button "Iniciar Sesión"
    assert_not page.has_content?("Administrar")
  end

  test "autentica con usuario existente en base inicial" do
    # En adJ 6.6
    # Selenium::WebDriver::Error::WebDriverError: chrome not reachable
    # (Session info: headless chrome=79.0.3945.117)
    # test/system/usuario_test.rb:11:in `block in <class:UsuarioTest>'
    skip
    usuario = Usuario.find_by(nusuario: 'sivel2')
    visit File.join(Rails.configuration.relative_url_root, '/usuarios/sign_in')
    usuario.password = 'sivel2'
    fill_in "Usuario", with: usuario.nusuario
    fill_in "Clave", with: usuario.password
    click_button "Iniciar Sesión"
    assert page.has_content?("Administrar")
  end

end
