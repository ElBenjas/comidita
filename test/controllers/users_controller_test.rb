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
    get users_url(id: @user.id)

    assert_response :success
  end

  test 'DELETE #destroy' do
    assert_difference 'User.count', -1 do
      delete user_url(id: @user.id)

      assert_response :success
    end

    assert_empty User.where(id: @user.id)
  end
end
