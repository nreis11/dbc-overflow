class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :type
      t.integer :votable_id
      t.string :votable_type
      t.integer :user_id

      t.timestamps
    end
  end
end
