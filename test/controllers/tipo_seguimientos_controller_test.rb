require 'test_helper'

class TipoSeguimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_seguimiento = tipo_seguimientos(:one)
  end

  test "should get index" do
    get tipo_seguimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_seguimiento_url
    assert_response :success
  end

  test "should create tipo_seguimiento" do
    assert_difference('TipoSeguimiento.count') do
      post tipo_seguimientos_url, params: { tipo_seguimiento: { nombre: @tipo_seguimiento.nombre } }
    end

    assert_redirected_to tipo_seguimiento_url(TipoSeguimiento.last)
  end

  test "should show tipo_seguimiento" do
    get tipo_seguimiento_url(@tipo_seguimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_seguimiento_url(@tipo_seguimiento)
    assert_response :success
  end

  test "should update tipo_seguimiento" do
    patch tipo_seguimiento_url(@tipo_seguimiento), params: { tipo_seguimiento: { nombre: @tipo_seguimiento.nombre } }
    assert_redirected_to tipo_seguimiento_url(@tipo_seguimiento)
  end

  test "should destroy tipo_seguimiento" do
    assert_difference('TipoSeguimiento.count', -1) do
      delete tipo_seguimiento_url(@tipo_seguimiento)
    end

    assert_redirected_to tipo_seguimientos_url
  end
end
