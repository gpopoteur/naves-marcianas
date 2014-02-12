require 'test_helper'

class NaveNodrizasControllerTest < ActionController::TestCase
  setup do
    @nave_nodriza = nave_nodrizas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nave_nodrizas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nave_nodriza" do
    assert_difference('NaveNodriza.count') do
      post :create, nave_nodriza: { nombre: @nave_nodriza.nombre }
    end

    assert_redirected_to nave_nodriza_path(assigns(:nave_nodriza))
  end

  test "should show nave_nodriza" do
    get :show, id: @nave_nodriza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nave_nodriza
    assert_response :success
  end

  test "should update nave_nodriza" do
    patch :update, id: @nave_nodriza, nave_nodriza: { nombre: @nave_nodriza.nombre }
    assert_redirected_to nave_nodriza_path(assigns(:nave_nodriza))
  end

  test "should destroy nave_nodriza" do
    assert_difference('NaveNodriza.count', -1) do
      delete :destroy, id: @nave_nodriza
    end

    assert_redirected_to nave_nodrizas_path
  end
end
