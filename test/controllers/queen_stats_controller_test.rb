require 'test_helper'

class QueenStatsControllerTest < ActionDispatch::IntegrationTest
  test "should get no-test--framework" do
    get queen_stats_no-test--framework_url
    assert_response :success
  end

end
