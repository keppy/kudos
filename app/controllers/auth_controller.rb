class AuthController < ApplicationController
  def create
    if person = login(login_params[:email], login_params[:password])
      session[:person_id] = person.id

      render :json => person, root: false 
    else
      render :json => {:error => "You are not a real person in our system."}, :status => :unauthorized
    end
  end

  def destroy
    if logout
      session[:access_token] = nil
      session[:person_id] = nil
      render :json => {:success => "User logged out."} 
    else
      render :json => {:error => "You are not logged in."}
    end
  end

  private
  
  def login_params
    params.require(:person).permit(:email, :password)
  end
end
