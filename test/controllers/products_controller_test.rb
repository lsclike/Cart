require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @update = {
        title: 'Test book',
        description: 'Nothing to talk about',
        image_url: 'test.jpg',
        price: 10.25
    }
  end
  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should get show" do
    get product_url
    assert_response :success
  end

  test "should get delete" do
    get delete_product_url(@product)
    assert_response :success
  end

end
