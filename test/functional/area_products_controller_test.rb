require 'test_helper'

class AreaProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_product" do
    assert_difference('AreaProduct.count') do
      post :create, :area_product => { }
    end

    assert_redirected_to area_product_path(assigns(:area_product))
  end

  test "should show area_product" do
    get :show, :id => area_products(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => area_products(:one).to_param
    assert_response :success
  end

  test "should update area_product" do
    put :update, :id => area_products(:one).to_param, :area_product => { }
    assert_redirected_to area_product_path(assigns(:area_product))
  end

  test "should destroy area_product" do
    assert_difference('AreaProduct.count', -1) do
      delete :destroy, :id => area_products(:one).to_param
    end

    assert_redirected_to area_products_path
  end
end
