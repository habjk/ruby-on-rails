require 'test_helper'

class ShopAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_admin = shop_admins(:one)
  end

  test "should get index" do
    get shop_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_admin_url
    assert_response :success
  end

  test "should create shop_admin" do
    assert_difference('ShopAdmin.count') do
      post shop_admins_url, params: { shop_admin: { email: @shop_admin.email, fname: @shop_admin.fname, lname: @shop_admin.lname, owns_id: @shop_admin.owns_id, password: @shop_admin.password } }
    end

    assert_redirected_to shop_admin_url(ShopAdmin.last)
  end

  test "should show shop_admin" do
    get shop_admin_url(@shop_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_admin_url(@shop_admin)
    assert_response :success
  end

  test "should update shop_admin" do
    patch shop_admin_url(@shop_admin), params: { shop_admin: { email: @shop_admin.email, fname: @shop_admin.fname, lname: @shop_admin.lname, owns_id: @shop_admin.owns_id, password: @shop_admin.password } }
    assert_redirected_to shop_admin_url(@shop_admin)
  end

  test "should destroy shop_admin" do
    assert_difference('ShopAdmin.count', -1) do
      delete shop_admin_url(@shop_admin)
    end

    assert_redirected_to shop_admins_url
  end
end
