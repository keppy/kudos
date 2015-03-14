class KudoSerializer < ActiveModel::Serializer
  attributes :id, :sender, :reciever, :content

  def sender
    if object.sender_id and email = Person.find(object.sender_id).email
      return email
    else
      return "none"
    end
  end

  def reciever
    if object.reciever_id and email = Person.find(object.reciever_id).email
      return email
    else
      return "none"
    end
  end
end
