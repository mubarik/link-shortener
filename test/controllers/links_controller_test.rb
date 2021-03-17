require "test_helper"

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "should create a shortened URL" do
    post api_v1_links_path, params: {url: 'https://my.verylong.url', slug: 'shorty'}

    assert_response :created
    
    response = JSON.parse @response.body
    
    # assert the response contains a shortened URL however you'd wish
    # to verify that
  end
end
