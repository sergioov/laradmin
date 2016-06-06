require 'test_helper'

class ProgramedCourseSessionsControllerTest < ActionController::TestCase
  setup do
    @programed_course_session = programed_course_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programed_course_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programed_course_session" do
    assert_difference('ProgramedCourseSession.count') do
      post :create, programed_course_session: { date: @programed_course_session.date, programed_course_id: @programed_course_session.programed_course_id, session_number: @programed_course_session.session_number, topic: @programed_course_session.topic }
    end

    assert_redirected_to programed_course_session_path(assigns(:programed_course_session))
  end

  test "should show programed_course_session" do
    get :show, id: @programed_course_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programed_course_session
    assert_response :success
  end

  test "should update programed_course_session" do
    patch :update, id: @programed_course_session, programed_course_session: { date: @programed_course_session.date, programed_course_id: @programed_course_session.programed_course_id, session_number: @programed_course_session.session_number, topic: @programed_course_session.topic }
    assert_redirected_to programed_course_session_path(assigns(:programed_course_session))
  end

  test "should destroy programed_course_session" do
    assert_difference('ProgramedCourseSession.count', -1) do
      delete :destroy, id: @programed_course_session
    end

    assert_redirected_to programed_course_sessions_path
  end
end
