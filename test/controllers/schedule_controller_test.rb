require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get aaa:integer" do
    get schedule_aaa:integer_url
    assert_response :success
  end
end
