require 'test_helper'

class NamegensControllerTest < ActionController::TestCase
  setup do
    @namegen = namegens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:namegens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create namegen" do
    assert_difference('Namegen.count') do
      post :create, namegen: { middle: @namegen.middle, name: @namegen.name, names: @namegen.names, prefix: @namegen.prefix, suffix: @namegen.suffix, syllab_mean: @namegen.syllab_mean, syllab_stddev: @namegen.syllab_stddev }
    end

    assert_redirected_to namegen_path(assigns(:namegen))
  end

  test "should show namegen" do
    get :show, id: @namegen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @namegen
    assert_response :success
  end

  test "should update namegen" do
    patch :update, id: @namegen, namegen: { middle: @namegen.middle, name: @namegen.name, names: @namegen.names, prefix: @namegen.prefix, suffix: @namegen.suffix, syllab_mean: @namegen.syllab_mean, syllab_stddev: @namegen.syllab_stddev }
    assert_redirected_to namegen_path(assigns(:namegen))
  end

  test "should destroy namegen" do
    assert_difference('Namegen.count', -1) do
      delete :destroy, id: @namegen
    end

    assert_redirected_to namegens_path
  end
end
