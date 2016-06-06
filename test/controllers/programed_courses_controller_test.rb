require 'test_helper'

class ProgramedCoursesControllerTest < ActionController::TestCase
  setup do
    @programed_course = programed_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programed_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programed_course" do
    assert_difference('ProgramedCourse.count') do
      post :create, programed_course: {  }
    end

    assert_redirected_to programed_course_path(assigns(:programed_course))
  end

  test "should show programed_course" do
    get :show, id: @programed_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programed_course
    assert_response :success
  end

  test "should update programed_course" do
    patch :update, id: @programed_course, programed_course: {  }
    assert_redirected_to programed_course_path(assigns(:programed_course))
  end

  test "should destroy programed_course" do
    assert_difference('ProgramedCourse.count', -1) do
      delete :destroy, id: @programed_course
    end

    assert_redirected_to programed_courses_path
  end
end
