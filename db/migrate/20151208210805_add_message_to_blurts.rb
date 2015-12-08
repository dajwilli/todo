class AddMessageToBlurts < ActiveRecord::Migration
  def change
    add_column :blurts, :message, :text
  end
end
