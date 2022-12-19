require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "get singup page" do
    get signup_path
  end

  test "invalid singup information" do
    assert_no_difference "User.count" do
      post users_path, params: {user: { name: "", email: 'delp.mail.ru', password: 'foo', password_confirmation: 'baz'}}
    end
    assert_template 'users/new'
  end

  test "valid singup information" do
    assert_difference "User.count", 1 do
      post users_path, params: {user: { name: "gringo", email: 'delp@mail.ru', password: 'foobar', password_confirmation: 'foobar'}}
      follow_redirect!
    end
    assert_template 'users/show'
  end
end
