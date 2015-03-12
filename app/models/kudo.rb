class Kudo < ActiveRecord::Base
  belongs_to :sender, class_name: 'Person', foreign_key: 'sender_id'
  belongs_to :reciever, class_name: 'Person', foreign_key: 'reciever_id'
end
