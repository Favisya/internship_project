class CreateStudentsTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :students_tasks do |t|
      t.references :student;
      t.references :task;
    end
  end
end
