class AuthController < ApplicationController
  def create
    if @person = login(login_params[:email], login_params[:password])
      api_key = ApiKey.create()
      session[:access_token] = api_key.access_token
      session[:person_id] = @person.id

      render :json => {:person_id => @person.id, :access_token => api_key.access_token}
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
