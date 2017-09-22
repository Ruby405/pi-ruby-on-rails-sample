require 'test_helper'

class AttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attachment = create(:attachment)
    @pia = @attachment.pia
  end

  test "should get index" do
    get attachments_url(@pia), as: :json
    assert_response :success
  end

  #test "should create attachment" do
  #  assert_difference('Attachment.count') do
  #    post attachments_url(@pia), params: { attachment: { pia_id: @pia.id, attached_file: fixture_file_upload('test/files/test_file.txt', 'text/plain') } }, as: :json
  #  end

  #  assert_response 201
  #end

  test "should show attachment" do
    get attachment_url(id: @attachment.id, pia_id: @pia.id), as: :json
    assert_response :success
  end

  test "should update attachment" do
    patch attachment_url(id: @attachment.id, pia_id: @pia.id), params: { attachment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy attachment" do
    assert_difference('Attachment.count', -1) do
      delete attachment_url(id: @attachment.id, pia_id: @pia.id), as: :json
    end

    assert_response 204
  end
end
