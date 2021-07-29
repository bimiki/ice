require "test_helper"

class SnowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snow = snows(:one)
  end

  test "should get index" do
    get snows_url
    assert_response :success
  end

  test "should get new" do
    get new_snow_url
    assert_response :success
  end

  test "should create snow" do
    assert_difference('Snow.count') do
      post snows_url, params: { snow: { water: @snow.water } }
    end

    assert_redirected_to snow_url(Snow.last)
  end

  test "should show snow" do
    get snow_url(@snow)
    assert_response :success
  end

  test "should get edit" do
    get edit_snow_url(@snow)
    assert_response :success
  end

  test "should update snow" do
    patch snow_url(@snow), params: { snow: { water: @snow.water } }
    assert_redirected_to snow_url(@snow)
  end

  test "should destroy snow" do
    assert_difference('Snow.count', -1) do
      delete snow_url(@snow)
    end

    assert_redirected_to snows_url
  end
end
