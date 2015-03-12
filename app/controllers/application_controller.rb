class ApplicationController < ActionController::API
  include Sorcery::Controller
  include ActionController::RequestForgeryProtection

  def current_person
    @current_person ||= Person.find(session[:person_id]) if session[:person_id]
  end
end
