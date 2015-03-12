require 'test_helper'

class KudoTest < ActiveSupport::TestCase

  test "kudo can have sender and reciever" do
    sender = create(:person)
    reciever = create(:person, email: "harvard@ox.com") 
    kudo = create(:kudo, sender: sender, reciever: reciever)

    assert_equal kudo.sender, sender
    assert_equal kudo.reciever, reciever
  end
end
