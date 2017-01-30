class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :subject
      t.integer :grade
      t.string :description
      t.string :lesson_file

      t.timestamps null: false
    end
  end
end
