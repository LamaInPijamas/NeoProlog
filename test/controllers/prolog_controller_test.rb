require "test_helper"

class PrologControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prolog_new_url
    assert_response :success
  end

  test "should get execute" do
    get prolog_execute_url
    assert_response :success
  end
end
