class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.text :whats_done
      t.integer :result
      t.text :progress
      t.date :completed_at
      t.bigint :task_id
      t.timestamps
    end
  end
end
