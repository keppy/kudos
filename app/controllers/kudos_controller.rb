class KudosController < ApplicationController
  def create
    if @kudo = Kudo.create(kudo_params) 
      render :json => @kudo
    else
      render :json => {:error => "Couldn't send the kudo."}
    end
  end

  def index
    @kudos = Kudo.where(reciever_id: current_user.id)
    render :json => @kudos
  end

  def kudo_params
    params.require(:kudo).permit(:content, :sender_id, :reciever_id)
  end
end
