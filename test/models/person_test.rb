require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "refil_kudos" do
    person1 = create(:person, kudos_available: 0, email: "fakerdoesntwork@gmail.com")
    person2 = create(:person, kudos_available: 0, email: "itsucks@gmail.com")
    Person.refil_kudos()
    person1.reload
    person2.reload

    assert_equal person1.kudos_available, 3
    assert_equal person2.kudos_available, 3
  end
end
