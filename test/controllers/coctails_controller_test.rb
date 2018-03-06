require 'test_helper'

class CoctailsControllerTest < ActionController::TestCase
  setup do
    @coctail = coctails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coctails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coctail" do
    assert_difference('Coctail.count') do
      post :create, coctail: { ime: @coctail.ime, opis: @coctail.opis, sestavine: @coctail.sestavine }
    end

    assert_redirected_to coctail_path(assigns(:coctail))
  end

  test "should show coctail" do
    get :show, id: @coctail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coctail
    assert_response :success
  end

  test "should update coctail" do
    patch :update, id: @coctail, coctail: { ime: @coctail.ime, opis: @coctail.opis, sestavine: @coctail.sestavine }
    assert_redirected_to coctail_path(assigns(:coctail))
  end

  test "should destroy coctail" do
    assert_difference('Coctail.count', -1) do
      delete :destroy, id: @coctail
    end

    assert_redirected_to coctails_path
  end
end
