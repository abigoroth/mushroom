require 'test_helper'

class CustomerPurchasesControllerTest < ActionController::TestCase
  setup do
    @customer_purchase = customer_purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_purchase" do
    assert_difference('CustomerPurchase.count') do
      post :create, customer_purchase: { actual_payment: @customer_purchase.actual_payment, customer_id: @customer_purchase.customer_id, date: @customer_purchase.date, expected_payment: @customer_purchase.expected_payment, quantity: @customer_purchase.quantity }
    end

    assert_redirected_to customer_purchase_path(assigns(:customer_purchase))
  end

  test "should show customer_purchase" do
    get :show, id: @customer_purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_purchase
    assert_response :success
  end

  test "should update customer_purchase" do
    patch :update, id: @customer_purchase, customer_purchase: { actual_payment: @customer_purchase.actual_payment, customer_id: @customer_purchase.customer_id, date: @customer_purchase.date, expected_payment: @customer_purchase.expected_payment, quantity: @customer_purchase.quantity }
    assert_redirected_to customer_purchase_path(assigns(:customer_purchase))
  end

  test "should destroy customer_purchase" do
    assert_difference('CustomerPurchase.count', -1) do
      delete :destroy, id: @customer_purchase
    end

    assert_redirected_to customer_purchases_path
  end
end
