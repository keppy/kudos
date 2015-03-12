FactoryGirl.define do 
  factory :kudo do
    sender_id 1
    reciever_id 1
    content "MyText"
  end

  factory :person do
    email "willy@wonka.com"
    password "password"
  end
end
