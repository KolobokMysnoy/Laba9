require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get '/view'
    assert_response :success
  end 

  test "get exact numbers" do
    get '/view'
    data_from_site= assigns[:current_answers]
    assert_equal [4,6,2,5,24,3,6,120,5], data_from_site
  end
end
