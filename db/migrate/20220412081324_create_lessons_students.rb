class CreateLessonsStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons_students do |t|

      t.timestamps
    end
  end
end
