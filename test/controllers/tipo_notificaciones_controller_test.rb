require 'test_helper'

class TipoNotificacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_notificacione = tipo_notificaciones(:one)
  end

  test "should get index" do
    get tipo_notificaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_notificacione_url
    assert_response :success
  end

  test "should create tipo_notificacione" do
    assert_difference('TipoNotificacione.count') do
      post tipo_notificaciones_url, params: { tipo_notificacione: { descripcion: @tipo_notificacione.descripcion, icono: @tipo_notificacione.icono, nombre: @tipo_notificacione.nombre } }
    end

    assert_redirected_to tipo_notificacione_url(TipoNotificacione.last)
  end

  test "should show tipo_notificacione" do
    get tipo_notificacione_url(@tipo_notificacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_notificacione_url(@tipo_notificacione)
    assert_response :success
  end

  test "should update tipo_notificacione" do
    patch tipo_notificacione_url(@tipo_notificacione), params: { tipo_notificacione: { descripcion: @tipo_notificacione.descripcion, icono: @tipo_notificacione.icono, nombre: @tipo_notificacione.nombre } }
    assert_redirected_to tipo_notificacione_url(@tipo_notificacione)
  end

  test "should destroy tipo_notificacione" do
    assert_difference('TipoNotificacione.count', -1) do
      delete tipo_notificacione_url(@tipo_notificacione)
    end

    assert_redirected_to tipo_notificaciones_url
  end
end
