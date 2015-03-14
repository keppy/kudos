require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @request.headers['Accept'] = Mime::JSON
    @request.headers['Content-Type'] = Mime::JSON.to_s
    @organization = create(:organization)
    @person = create(:person, organization: @organization, email: "wtf@faker.com")
    login_user(@person)
  end

  test "can get an index of people in current_person's organization" do
    co_worker0 = create(:person, email: "wookie@gookie.com", organization: @organization)
    co_worker1 = create(:person, email: "shoo@goo.com", organization: @organization)
    random_dude = create(:person, email: "share@care.com")
    other_random_dude = create(:person, email: "care@care.com")
    kudo1 = create(:kudo, reciever: @person, sender: co_worker1)
    kudo2 = create(:kudo, reciever: co_worker1, sender: co_worker0)
    kudo3 = create(:kudo, reciever: random_dude, sender: other_random_dude)


    get :index, id: @person.id

    body = JSON.parse(response.body)
    assert_equal body.count, 2
  end
end
