require "test_helper"

class TestAsyncControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_async_index_url
    assert_response :success
  end
end
