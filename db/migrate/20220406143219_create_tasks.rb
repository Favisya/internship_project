class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title ,null: false
      t.bigint :section_id
      t.text :description
      t.timestamps
    end
  end
end
