require 'test_helper'

class BishlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bishlogs_index_url
    assert_response :success
  end

end
