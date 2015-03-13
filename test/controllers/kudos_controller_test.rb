require 'test_helper'

class KudosControllerTest < ActionController::TestCase
  
  setup do
    @request.headers['Accept'] = Mime::JSON
    @request.headers['Content-Type'] = Mime::JSON.to_s
    @person = create(:person)
    login_user(@person)
  end

  test "can create a kudo" do
    reciever = create(:person, email: "woopy@hooky.com")
    post :create, {'kudo' => {'sender_id' => @person.id,
                              'reciever_id' => reciever.id,
                              'content' => "Where's waldo?"}}, :format => 'json'

    assert_response :success
    body = JSON.parse(response.body)
    assert_equal body['reciever_id'], reciever.id
    assert_equal body['sender_id'], @person.id
  end

  test "can get index of kudos" do
    kudo1 = create(:kudo, reciever: @person)
    kudo2 = create(:kudo, reciever: @person)
    kudo3 = create(:kudo)
    get :show, id: @person.id, :format => 'json'

    assert_response :success
    body = JSON.parse(response.body)
    assert_equal body.count, 2
  end
end
