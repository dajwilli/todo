class RemoveBodyFromBlurts < ActiveRecord::Migration
  def change
    remove_column :blurts, :body, :text
  end
end
