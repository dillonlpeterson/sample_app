require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should login" do
    dave = users(:one)
    post login_url, params: {name: dave.name, password: 'secret'}
    assert_redirected_to admin_url 
    assert_equal dave.id, session[:user_id]
  end

  test "should fail login" do
    dave = users(:one)
    post login_url, params: {name: dave.password, password: dave.name}
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url 
    assert_redirected_to store_index_url
  end
end
