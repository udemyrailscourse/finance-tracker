require 'test_helper'

class UserStocksControllerTest < ActionController::TestCase
  setup do
    @user_stock = user_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_stock" do
    assert_difference('UserStock.count') do
      post :create, user_stock: { stock_id: @user_stock.stock_id, user_id: @user_stock.user_id }
    end

    assert_redirected_to user_stock_path(assigns(:user_stock))
  end

  test "should show user_stock" do
    get :show, id: @user_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_stock
    assert_response :success
  end

  test "should update user_stock" do
    patch :update, id: @user_stock, user_stock: { stock_id: @user_stock.stock_id, user_id: @user_stock.user_id }
    assert_redirected_to user_stock_path(assigns(:user_stock))
  end

  test "should destroy user_stock" do
    assert_difference('UserStock.count', -1) do
      delete :destroy, id: @user_stock
    end

    assert_redirected_to user_stocks_path
  end
end
