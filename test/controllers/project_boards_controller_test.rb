require 'test_helper'

class ProjectBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_board = project_boards(:one)
  end

  test "should get index" do
    get project_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_project_board_url
    assert_response :success
  end

  test "should create project_board" do
    assert_difference('ProjectBoard.count') do
      post project_boards_url, params: { project_board: { title: @project_board.title } }
    end

    assert_redirected_to project_board_url(ProjectBoard.last)
  end

  test "should show project_board" do
    get project_board_url(@project_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_board_url(@project_board)
    assert_response :success
  end

  test "should update project_board" do
    patch project_board_url(@project_board), params: { project_board: { title: @project_board.title } }
    assert_redirected_to project_board_url(@project_board)
  end

  test "should destroy project_board" do
    assert_difference('ProjectBoard.count', -1) do
      delete project_board_url(@project_board)
    end

    assert_redirected_to project_boards_url
  end
end
