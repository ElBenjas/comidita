require 'test_helper'

class PicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture = pictures(:one)
  end

  test 'GET index' do
    get pictures_url

    assert_response :success
  end

  test 'POST #create' do
    params = {
      picture: {
        pic1: 'pic1',
        pic2: 'pic2',
        pic3: 'pic3'
      }
    }

    assert_difference 'Picture.count', 1 do
      post pictures_url,
      params: params
    end
  end

  test 'GET #show' do
    get picture_url(id: @picture.id)

    assert_response :success
  end

  test 'PUT #update' do
    params = {
      picture: {
        pic1: 'testalgo',
      }
    }

    assert_changes '@picture.pic1' do
      put picture_url(id: @picture.id),
      params: params

      assert_response :success
      @picture.reload
    end
  end

  test 'DELETE #destroy' do
    assert_difference 'Picture.count', -1 do
      delete picture_url(id: @picture.id)

      assert_response :success
    end
  end

end
