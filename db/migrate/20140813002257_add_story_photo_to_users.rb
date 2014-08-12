class AddStoryPhotoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :story_photo, :string
  end
end
