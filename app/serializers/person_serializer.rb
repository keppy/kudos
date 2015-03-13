class PersonSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :sent_kudos, class_name: 'Kudo', foreign_key: 'sender_id'
  has_many :recieved_kudos, class_name: 'Kudo', foreign_key: 'reciever_id'
end
