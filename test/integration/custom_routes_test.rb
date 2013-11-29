require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /signin route opens the login page" do
  	get '/signin'
  	assert_response :success
  end

  test "that /signout route opens the log out page" do
  	get '/signout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

  test "that /signup route opens the sign up page" do
  	get '/signup'
  	assert_response :success
  end

end
