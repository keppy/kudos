class AddKudosAvailableToPerson < ActiveRecord::Migration
  def change
    add_column :people, :kudos_available, :integer, :default => 3
  end
end
