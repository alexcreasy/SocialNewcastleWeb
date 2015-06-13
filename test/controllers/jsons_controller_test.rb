require 'test_helper'

class JsonsControllerTest < ActionController::TestCase
  setup do
    @json = jsons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jsons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create json" do
    assert_difference('Json.count') do
      post :create, json: { data: @json.data, type: @json.type }
    end

    assert_redirected_to json_path(assigns(:json))
  end

  test "should show json" do
    get :show, id: @json
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @json
    assert_response :success
  end

  test "should update json" do
    patch :update, id: @json, json: { data: @json.data, type: @json.type }
    assert_redirected_to json_path(assigns(:json))
  end

  test "should destroy json" do
    assert_difference('Json.count', -1) do
      delete :destroy, id: @json
    end

    assert_redirected_to jsons_path
  end
end
