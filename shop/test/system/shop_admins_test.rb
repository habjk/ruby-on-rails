require "application_system_test_case"

class ShopAdminsTest < ApplicationSystemTestCase
  setup do
    @shop_admin = shop_admins(:one)
  end

  test "visiting the index" do
    visit shop_admins_url
    assert_selector "h1", text: "Shop Admins"
  end

  test "creating a Shop admin" do
    visit shop_admins_url
    click_on "New Shop Admin"

    fill_in "Email", with: @shop_admin.email
    fill_in "Fname", with: @shop_admin.fname
    fill_in "Lname", with: @shop_admin.lname
    fill_in "Owns", with: @shop_admin.owns_id
    fill_in "Password", with: @shop_admin.password
    click_on "Create Shop admin"

    assert_text "Shop admin was successfully created"
    click_on "Back"
  end

  test "updating a Shop admin" do
    visit shop_admins_url
    click_on "Edit", match: :first

    fill_in "Email", with: @shop_admin.email
    fill_in "Fname", with: @shop_admin.fname
    fill_in "Lname", with: @shop_admin.lname
    fill_in "Owns", with: @shop_admin.owns_id
    fill_in "Password", with: @shop_admin.password
    click_on "Update Shop admin"

    assert_text "Shop admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop admin" do
    visit shop_admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop admin was successfully destroyed"
  end
end
