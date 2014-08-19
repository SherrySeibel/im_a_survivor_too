class RemoveMediaColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :story_photo, :string
    remove_column :users, :video, :string
  end
end
