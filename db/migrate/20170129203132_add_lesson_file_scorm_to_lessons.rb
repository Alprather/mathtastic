class AddLessonFileScormToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_file_scorm, :string
  end
end
