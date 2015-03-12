class CreateOrginizations < ActiveRecord::Migration

  def change
    create_table :orginizations do |t|
      t.name

      t.timestamps
    end
  end
end
