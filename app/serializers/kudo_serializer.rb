class KudoSerializer < ActiveModel::Serializer
  attributes :id, :sender, :reciever, :content

  def sender
    if email = Person.find(object.sender_id).email
      return email
    else
      return "none"
    end
  end

  def reciever
    if email = Person.find(object.reciever_id).email
      return email
    else
      return "none"
    end
  end
end
