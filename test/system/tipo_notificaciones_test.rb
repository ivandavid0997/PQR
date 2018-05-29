require "application_system_test_case"

class TipoNotificacionesTest < ApplicationSystemTestCase
  setup do
    @tipo_notificacione = tipo_notificaciones(:one)
  end

  test "visiting the index" do
    visit tipo_notificaciones_url
    assert_selector "h1", text: "Tipo Notificaciones"
  end

  test "creating a Tipo notificacione" do
    visit tipo_notificaciones_url
    click_on "New Tipo Notificacione"

    fill_in "Descripcion", with: @tipo_notificacione.descripcion
    fill_in "Icono", with: @tipo_notificacione.icono
    fill_in "Nombre", with: @tipo_notificacione.nombre
    click_on "Create Tipo notificacione"

    assert_text "Tipo notificacione was successfully created"
    click_on "Back"
  end

  test "updating a Tipo notificacione" do
    visit tipo_notificaciones_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_notificacione.descripcion
    fill_in "Icono", with: @tipo_notificacione.icono
    fill_in "Nombre", with: @tipo_notificacione.nombre
    click_on "Update Tipo notificacione"

    assert_text "Tipo notificacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo notificacione" do
    visit tipo_notificaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo notificacione was successfully destroyed"
  end
end
