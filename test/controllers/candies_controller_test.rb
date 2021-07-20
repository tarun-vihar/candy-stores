require "test_helper"

class CandiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candy = candies(:one)
  end

  test "should get index" do
    get candies_url
    assert_response :success
  end

  test "should get new" do
    get new_candy_url
    assert_response :success
  end

  test "should create candy" do
    assert_difference('Candy.count') do
      post candies_url, params: { candy: { candy_name: @candy.candy_name, flavour: @candy.flavour, price: @candy.price, shelf_id: @candy.shelf_id, shop_id: @candy.shop_id } }
    end

    assert_redirected_to candy_url(Candy.last)
  end

  test "should show candy" do
    get candy_url(@candy)
    assert_response :success
  end

  test "should get edit" do
    get edit_candy_url(@candy)
    assert_response :success
  end

  test "should update candy" do
    patch candy_url(@candy), params: { candy: { candy_name: @candy.candy_name, flavour: @candy.flavour, price: @candy.price, shelf_id: @candy.shelf_id, shop_id: @candy.shop_id } }
    assert_redirected_to candy_url(@candy)
  end

  test "should destroy candy" do
    assert_difference('Candy.count', -1) do
      delete candy_url(@candy)
    end

    assert_redirected_to candies_url
  end
end
