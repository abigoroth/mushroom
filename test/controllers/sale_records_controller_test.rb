require 'test_helper'

class SaleRecordsControllerTest < ActionController::TestCase
  setup do
    @sale_record = sale_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_record" do
    assert_difference('SaleRecord.count') do
      post :create, sale_record: { arra: @sale_record.arra, date: @sale_record.date, purchase: @sale_record.purchase, ttl_in: @sale_record.ttl_in, ttl_out: @sale_record.ttl_out }
    end

    assert_redirected_to sale_record_path(assigns(:sale_record))
  end

  test "should show sale_record" do
    get :show, id: @sale_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_record
    assert_response :success
  end

  test "should update sale_record" do
    patch :update, id: @sale_record, sale_record: { arra: @sale_record.arra, date: @sale_record.date, purchase: @sale_record.purchase, ttl_in: @sale_record.ttl_in, ttl_out: @sale_record.ttl_out }
    assert_redirected_to sale_record_path(assigns(:sale_record))
  end

  test "should destroy sale_record" do
    assert_difference('SaleRecord.count', -1) do
      delete :destroy, id: @sale_record
    end

    assert_redirected_to sale_records_path
  end
end
