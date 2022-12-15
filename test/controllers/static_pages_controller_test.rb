require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get '/'
    assert_response :success

  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select 'title', text: 'Help | Ruby on Rails Tutotial'
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select 'title', text: 'About | Ruby on Rails Tutotial'
  end

  test "should get contacts" do
    get contacts_path
    assert_response :success
    assert_select 'title', text: 'Contacts | Ruby on Rails Tutotial'
  end

end
