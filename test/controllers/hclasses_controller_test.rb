require 'test_helper'

class HclassesControllerTest < ActionController::TestCase
  setup do
    @hclass = hclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hclass" do
    assert_difference('Hclass.count') do
      post :create, hclass: { name: @hclass.name }
    end

    assert_redirected_to hclass_path(assigns(:hclass))
  end

  test "should show hclass" do
    get :show, id: @hclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hclass
    assert_response :success
  end

  test "should update hclass" do
    patch :update, id: @hclass, hclass: { name: @hclass.name }
    assert_redirected_to hclass_path(assigns(:hclass))
  end

  test "should destroy hclass" do
    assert_difference('Hclass.count', -1) do
      delete :destroy, id: @hclass
    end

    assert_redirected_to hclasses_path
  end
end
