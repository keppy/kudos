class KudosController < ApplicationController
  def create
    if kudo = Kudo.create(kudo_params) 
      render :json => kudo, root: false
    else
      render :json => {:error => "Couldn't send the kudo."}
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
