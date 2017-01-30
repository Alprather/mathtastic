class CreateClassroomGames < ActiveRecord::Migration
  def change
    create_table :classroom_games do |t|
      t.string :title
      t.string :subject
      t.integer :grade
      t.string :description
      t.string :lesson_file

      t.timestamps null: false
    end
  end
end
