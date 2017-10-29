require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  test 'GET #index' do
    get users_url

    assert_response :success
  end

  test 'GET #show' do
    get users_url{user.id}

    assert_response :success
  end
end
