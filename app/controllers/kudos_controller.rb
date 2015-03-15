class KudosController < ApplicationController
  def create
    person = Person.find(kudo_params[:sender_id])
    if kudo = Kudo.create(kudo_params) and person.kudos_available > 0
      person.decrement(:kudos_available, 1)
      person.save()
      render :json => kudo, root: false
    else
      render :json => {:error => "Couldn't send the kudo."}, :status => :unauthorized
    end
  end

  def show
    kudos = Kudo.where(reciever_id: params[:id])
    render :json => kudos, root: false
  end

  def kudo_params
    params.require(:kudo).permit(:content, :sender_id, :reciever_id)
  end
end
