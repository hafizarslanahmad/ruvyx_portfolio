require "test_helper"

class EnquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enquiry_new_url
    assert_response :success
  end

  test "should get create" do
    get enquiry_create_url
    assert_response :success
  end

  test "should get index" do
    get enquiry_index_url
    assert_response :success
  end
end
