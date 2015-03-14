class PeopleController < ApplicationController
  def index
    person = Person.find(params[:id])
    people_table = Person.arel_table
    people = Person.where(people_table[:organization_id].eq(person.organization.id).and(
                          people_table[:id]             .not_eq(current_user.id)))

    render :json => people, root: false 
  end


  def show
    person = Person.find(params[:id])
    render :json => person, root: false
  end

end
