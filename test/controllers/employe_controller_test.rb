require "test_helper"

class EmployeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get employe_create_url
    assert_response :success
  end

  test "should get Edit" do
    get employe_Edit_url
    assert_response :success
  end
end
