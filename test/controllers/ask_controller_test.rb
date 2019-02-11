require 'test_helper'

class AskControllerTest < ActionDispatch::IntegrationTest
  test "should get answer" do
    get ask_answer_url
    assert_response :success
  end

end
