class AddOrginizationToPerson < ActiveRecord::Migration
  def change
    add_reference :people, :orginization, index: true
    add_foreign_key :people, :orginizations
  end
end
