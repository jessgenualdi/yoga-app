require 'test_helper'

class UserSequencesControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:" do
    get user_sequences_user_id:_url
    assert_response :success
  end

  test "should get integer" do
    get user_sequences_integer_url
    assert_response :success
  end

  test "should get sequence_id:" do
    get user_sequences_sequence_id:_url
    assert_response :success
  end

  test "should get integer" do
    get user_sequences_integer_url
    assert_response :success
  end

end
