class CreateSectionsTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :sections_tasks do |t|
      #t.references :task
      #t.references :section
    end
  end
end
