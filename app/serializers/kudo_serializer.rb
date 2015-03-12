class KudoSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :reciever_id, :content

  belongs_to :sender
  belongs_to :reciever

end
