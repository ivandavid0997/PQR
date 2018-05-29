require "application_system_test_case"

class TipoSeguimientosTest < ApplicationSystemTestCase
  setup do
    @tipo_seguimiento = tipo_seguimientos(:one)
  end

  test "visiting the index" do
    visit tipo_seguimientos_url
    assert_selector "h1", text: "Tipo Seguimientos"
  end

  test "creating a Tipo seguimiento" do
    visit tipo_seguimientos_url
    click_on "New Tipo Seguimiento"

    fill_in "Nombre", with: @tipo_seguimiento.nombre
    click_on "Create Tipo seguimiento"

    assert_text "Tipo seguimiento was successfully created"
    click_on "Back"
  end

  test "updating a Tipo seguimiento" do
    visit tipo_seguimientos_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @tipo_seguimiento.nombre
    click_on "Update Tipo seguimiento"

    assert_text "Tipo seguimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo seguimiento" do
    visit tipo_seguimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo seguimiento was successfully destroyed"
  end
end
