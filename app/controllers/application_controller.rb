class ApplicationController < ActionController::API
  before_filter :load_current_person
  include Sorcery::Controller
  include ActionController::RequestForgeryProtection
  include ActionController::Serialization

  def load_current_person
    @current_person ||= Person.find(session[:person_id]) if session[:person_id]
  end
end
