class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :created_at
      t.datetime :due_date
      t.string :priority

      t.timestamps null: false
    end
  end
end
