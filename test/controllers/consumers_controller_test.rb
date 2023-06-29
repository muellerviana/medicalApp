require "test_helper"

class ConsumersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consumers_index_url
    assert_response :success
  end
end
