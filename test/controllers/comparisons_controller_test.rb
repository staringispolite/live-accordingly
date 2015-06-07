require 'test_helper'

class ComparisonsControllerTest < ActionController::TestCase
  setup do
    @comparison = comparisons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comparisons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comparison" do
    assert_difference('Comparison.count') do
      post :create, comparison: { habit_id_1: @comparison.habit_id_1, habit_id_2: @comparison.habit_id_2, winning_habit_id: @comparison.winning_habit_id }
    end

    assert_redirected_to comparison_path(assigns(:comparison))
  end

  test "should show comparison" do
    get :show, id: @comparison
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comparison
    assert_response :success
  end

  test "should update comparison" do
    patch :update, id: @comparison, comparison: { habit_id_1: @comparison.habit_id_1, habit_id_2: @comparison.habit_id_2, winning_habit_id: @comparison.winning_habit_id }
    assert_redirected_to comparison_path(assigns(:comparison))
  end

  test "should destroy comparison" do
    assert_difference('Comparison.count', -1) do
      delete :destroy, id: @comparison
    end

    assert_redirected_to comparisons_path
  end
end
