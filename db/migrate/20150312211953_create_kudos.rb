class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.integer :sender_id
      t.integer :reciever_id
      t.text :content

      t.timestamps null: false
    end
    add_index :kudos, :sender_id
    add_index :kudos, :reciever_id
  end
end
