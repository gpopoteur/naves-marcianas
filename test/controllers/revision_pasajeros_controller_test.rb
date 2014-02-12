require 'test_helper'

class RevisionPasajerosControllerTest < ActionController::TestCase
  setup do
    @revision_pasajero = revision_pasajeros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revision_pasajeros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revision_pasajero" do
    assert_difference('RevisionPasajero.count') do
      post :create, revision_pasajero: { pasajero_id: @revision_pasajero.pasajero_id, revision_id: @revision_pasajero.revision_id }
    end

    assert_redirected_to revision_pasajero_path(assigns(:revision_pasajero))
  end

  test "should show revision_pasajero" do
    get :show, id: @revision_pasajero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @revision_pasajero
    assert_response :success
  end

  test "should update revision_pasajero" do
    patch :update, id: @revision_pasajero, revision_pasajero: { pasajero_id: @revision_pasajero.pasajero_id, revision_id: @revision_pasajero.revision_id }
    assert_redirected_to revision_pasajero_path(assigns(:revision_pasajero))
  end

  test "should destroy revision_pasajero" do
    assert_difference('RevisionPasajero.count', -1) do
      delete :destroy, id: @revision_pasajero
    end

    assert_redirected_to revision_pasajeros_path
  end
end
