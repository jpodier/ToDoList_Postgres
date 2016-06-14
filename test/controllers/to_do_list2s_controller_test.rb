require 'test_helper'

class ToDoList2sControllerTest < ActionController::TestCase
  setup do
    @to_do_list2 = to_do_list2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:to_do_list2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create to_do_list2" do
    assert_difference('ToDoList2.count') do
      post :create, to_do_list2: { description: @to_do_list2.description, status: @to_do_list2.status, task_name: @to_do_list2.task_name }
    end

    assert_redirected_to to_do_list2_path(assigns(:to_do_list2))
  end

  test "should show to_do_list2" do
    get :show, id: @to_do_list2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @to_do_list2
    assert_response :success
  end

  test "should update to_do_list2" do
    patch :update, id: @to_do_list2, to_do_list2: { description: @to_do_list2.description, status: @to_do_list2.status, task_name: @to_do_list2.task_name }
    assert_redirected_to to_do_list2_path(assigns(:to_do_list2))
  end

  test "should destroy to_do_list2" do
    assert_difference('ToDoList2.count', -1) do
      delete :destroy, id: @to_do_list2
    end

    assert_redirected_to to_do_list2s_path
  end
end
