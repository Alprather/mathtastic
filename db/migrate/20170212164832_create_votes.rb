class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true
      t.references :classroom, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
