require 'test_helper'

class AuthControllerTest < ActionController::TestCase

  setup do
    @request.headers['Accept'] = Mime::JSON
    @request.headers['Content-Type'] = Mime::JSON.to_s
  end

  test "post creds should login user" do
    @person = create(:person)

    post :create, {'person' => {'email' => @person.email, 'password' => 'password'}}, :format => 'json'

    assert_response :success
    body = JSON.parse(response.body)
    assert_equal body['person_id'], @person.id
  end

end
