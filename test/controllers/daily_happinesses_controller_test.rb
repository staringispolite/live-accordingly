require 'test_helper'

class DailyHappinessesControllerTest < ActionController::TestCase
  setup do
    @daily_happiness = daily_happinesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_happinesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_happiness" do
    assert_difference('DailyHappiness.count') do
      post :create, daily_happiness: { happiness_score: @daily_happiness.happiness_score, time: @daily_happiness.time }
    end

    assert_redirected_to daily_happiness_path(assigns(:daily_happiness))
  end

  test "should show daily_happiness" do
    get :show, id: @daily_happiness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_happiness
    assert_response :success
  end

  test "should update daily_happiness" do
    patch :update, id: @daily_happiness, daily_happiness: { happiness_score: @daily_happiness.happiness_score, time: @daily_happiness.time }
    assert_redirected_to daily_happiness_path(assigns(:daily_happiness))
  end

  test "should destroy daily_happiness" do
    assert_difference('DailyHappiness.count', -1) do
      delete :destroy, id: @daily_happiness
    end

    assert_redirected_to daily_happinesses_path
  end
end
