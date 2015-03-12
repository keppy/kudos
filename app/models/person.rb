class Person < ActiveRecord::Base
  authenticates_with_sorcery!
  belongs_to :organization
  has_many :sent_kudos, class_name: 'Kudo', foreign_key: 'sender_id'
  has_many :recieved_kudos, class_name: 'Kudo', foreign_key: 'reciever_id'
end
