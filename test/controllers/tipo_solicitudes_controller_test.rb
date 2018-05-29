require 'test_helper'

class TipoSolicitudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_solicitude = tipo_solicitudes(:one)
  end

  test "should get index" do
    get tipo_solicitudes_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_solicitude_url
    assert_response :success
  end

  test "should create tipo_solicitude" do
    assert_difference('TipoSolicitude.count') do
      post tipo_solicitudes_url, params: { tipo_solicitude: { id_parametros: @tipo_solicitude.id_parametros, nombre_tipo: @tipo_solicitude.nombre_tipo } }
    end

    assert_redirected_to tipo_solicitude_url(TipoSolicitude.last)
  end

  test "should show tipo_solicitude" do
    get tipo_solicitude_url(@tipo_solicitude)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_solicitude_url(@tipo_solicitude)
    assert_response :success
  end

  test "should update tipo_solicitude" do
    patch tipo_solicitude_url(@tipo_solicitude), params: { tipo_solicitude: { id_parametros: @tipo_solicitude.id_parametros, nombre_tipo: @tipo_solicitude.nombre_tipo } }
    assert_redirected_to tipo_solicitude_url(@tipo_solicitude)
  end

  test "should destroy tipo_solicitude" do
    assert_difference('TipoSolicitude.count', -1) do
      delete tipo_solicitude_url(@tipo_solicitude)
    end

    assert_redirected_to tipo_solicitudes_url
  end
end
