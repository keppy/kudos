FactoryGirl.define do 
  factory :kudo do
    association :sender, factory: :person
    association :reciever, factior: :person
    reciever_id 1
    content "MyText"
  end

  factory :person do
    email "name@gmail.com"
    password "password"
  end

  factory :organization do
    name "cool org"
  end
end
