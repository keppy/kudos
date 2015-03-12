class AddOrganizationToPerson < ActiveRecord::Migration
  def change
    add_reference :people, :organization, index: true
    add_foreign_key :people, :organizations
  end
end
