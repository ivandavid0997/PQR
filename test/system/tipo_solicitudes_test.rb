require "application_system_test_case"

class TipoSolicitudesTest < ApplicationSystemTestCase
  setup do
    @tipo_solicitude = tipo_solicitudes(:one)
  end

  test "visiting the index" do
    visit tipo_solicitudes_url
    assert_selector "h1", text: "Tipo Solicitudes"
  end

  test "creating a Tipo solicitude" do
    visit tipo_solicitudes_url
    click_on "New Tipo Solicitude"

    fill_in "Id Parametros", with: @tipo_solicitude.id_parametros
    fill_in "Nombre Tipo", with: @tipo_solicitude.nombre_tipo
    click_on "Create Tipo solicitude"

    assert_text "Tipo solicitude was successfully created"
    click_on "Back"
  end

  test "updating a Tipo solicitude" do
    visit tipo_solicitudes_url
    click_on "Edit", match: :first

    fill_in "Id Parametros", with: @tipo_solicitude.id_parametros
    fill_in "Nombre Tipo", with: @tipo_solicitude.nombre_tipo
    click_on "Update Tipo solicitude"

    assert_text "Tipo solicitude was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo solicitude" do
    visit tipo_solicitudes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo solicitude was successfully destroyed"
  end
end
