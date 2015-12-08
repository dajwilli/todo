class CreateBlurts < ActiveRecord::Migration
  def change
    create_table :blurts do |t|
      t.text :body

      t.timestamps null: false
    end
  end
end
