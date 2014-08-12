class AddVideoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :video, :string
  end
end
