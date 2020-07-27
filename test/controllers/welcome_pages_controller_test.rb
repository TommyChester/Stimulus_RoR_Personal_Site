require 'test_helper'

class WelcomePagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @welcome_page = welcome_pages(:one)
  end

  test "should get index" do
    get welcome_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_welcome_page_url
    assert_response :success
  end

  test "should create welcome_page" do
    assert_difference('WelcomePage.count') do
      post welcome_pages_url, params: { welcome_page: {  } }
    end

    assert_redirected_to welcome_page_url(WelcomePage.last)
  end

  test "should show welcome_page" do
    get welcome_page_url(@welcome_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_welcome_page_url(@welcome_page)
    assert_response :success
  end

  test "should update welcome_page" do
    patch welcome_page_url(@welcome_page), params: { welcome_page: {  } }
    assert_redirected_to welcome_page_url(@welcome_page)
  end

  test "should destroy welcome_page" do
    assert_difference('WelcomePage.count', -1) do
      delete welcome_page_url(@welcome_page)
    end

    assert_redirected_to welcome_pages_url
  end
end
