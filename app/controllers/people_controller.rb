class PeopleController < ApplicationController
  def index
    people_table = Person.arel_table
    people = Person.where(people_table[:organization_id].eq(current_user.organization_id).and(
                          people_table[:id]             .not_eq(current_user.id)))

    render :json => people, root: false 
  end
end
