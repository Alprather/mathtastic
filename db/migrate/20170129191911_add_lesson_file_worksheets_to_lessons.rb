class AddLessonFileWorksheetsToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_file_worksheets, :string
  end
end
