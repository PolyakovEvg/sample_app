require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get '/'
    assert_response :success

  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', text: 'Help | Ruby on Rails Tutotial'
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', text: 'About | Ruby on Rails Tutotial'
  end

end
