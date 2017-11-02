require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
  end

  test 'GET #index' do
    get users_url

    assert_response :success
  end

  test 'POST #create' do
    params = {
      user: {
        name: 'Test',
        email: 'test@testing.com',
        password: ''
      }
    }

    assert_difference 'User.count', 1 do
      post users_url,
      params: params

      assert_response :success
    end
  end

  test 'GET #show' do
    get user_url(id: @user.id)

    assert_response :success
  end

  test 'PUT #update' do
    params = {
      user: {
        name: 'Test'
      }
    }

    assert_changes '@user.name' do
      put user_url(id: @user.id),
      params: params

      assert_response :success
      @user.reload
    end
  end

  test 'DELETE #destroy' do
    assert_difference 'User.count', -1 do
      delete user_url(id: @user.id)

      assert_response :success
    end

    assert_empty User.where(id: @user.id)
  end
end
