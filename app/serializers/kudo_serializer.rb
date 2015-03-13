class KudoSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :reciever_id, :content
end
