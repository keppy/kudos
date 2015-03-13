require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @request.headers['Accept'] = Mime::JSON
    @request.headers['Content-Type'] = Mime::JSON.to_s
    @organization = create(:organization)
    @person = create(:person, organization: @organization)
    login_user(@person)
  end

  test "can get an index of people in current_person's organization" do
    co_worker0 = create(:person, email: "wookie@gookie.com", organization: @organization)
    co_worker1 = create(:person, email: "shoo@goo.com", organization: @organization)
    random_dude = create(:person, email: "share@care.com")
    kudo1 = create(:kudo, reciever: @person)
    kudo2 = create(:kudo, reciever: co_worker1)
    kudo3 = create(:kudo)


    get :index

    body = JSON.parse(response.body)
    assert_equal body.count, 2
  end
end
