require 'test_helper'

class DigestReferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @digest_reference = digest_references(:one)
  end

  test "should get index" do
    get digest_references_url
    assert_response :success
  end

  test "should get new" do
    get new_digest_reference_url
    assert_response :success
  end

  test "should create digest_reference" do
    assert_difference('DigestReference.count') do
      post digest_references_url, params: { digest_reference: { user_id: @digest_reference.user_id } }
    end

    assert_redirected_to digest_reference_url(DigestReference.last)
  end

  test "should show digest_reference" do
    get digest_reference_url(@digest_reference)
    assert_response :success
  end

  test "should get edit" do
    get edit_digest_reference_url(@digest_reference)
    assert_response :success
  end

  test "should update digest_reference" do
    patch digest_reference_url(@digest_reference), params: { digest_reference: { user_id: @digest_reference.user_id } }
    assert_redirected_to digest_reference_url(@digest_reference)
  end

  test "should destroy digest_reference" do
    assert_difference('DigestReference.count', -1) do
      delete digest_reference_url(@digest_reference)
    end

    assert_redirected_to digest_references_url
  end
end
