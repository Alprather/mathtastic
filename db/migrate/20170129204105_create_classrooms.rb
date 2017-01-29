class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :title
      t.string :lesson_file
      t.string :subject
      t.string :description

      t.timestamps null: false
    end
  end
end
