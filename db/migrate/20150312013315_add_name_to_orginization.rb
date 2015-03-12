class AddNameToOrginization < ActiveRecord::Migration
  def change
    add_column :orginizations, :name, :string
  end
end
