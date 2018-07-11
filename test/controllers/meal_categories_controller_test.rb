require 'test_helper'

class MealCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_category = meal_categories(:one)
  end

  test "should get index" do
    get meal_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_category_url
    assert_response :success
  end

  test "should create meal_category" do
    assert_difference('MealCategory.count') do
      post meal_categories_url, params: { meal_category: {  } }
    end

    assert_redirected_to meal_category_url(MealCategory.last)
  end

  test "should show meal_category" do
    get meal_category_url(@meal_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_category_url(@meal_category)
    assert_response :success
  end

  test "should update meal_category" do
    patch meal_category_url(@meal_category), params: { meal_category: {  } }
    assert_redirected_to meal_category_url(@meal_category)
  end

  test "should destroy meal_category" do
    assert_difference('MealCategory.count', -1) do
      delete meal_category_url(@meal_category)
    end

    assert_redirected_to meal_categories_url
  end
end
