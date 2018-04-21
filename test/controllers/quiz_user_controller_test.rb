require 'test_helper'

class QuizUserControllerTest < ActionDispatch::IntegrationTest
  test "should get quiz" do
    get quiz_user_quiz_url
    assert_response :success
  end

end
