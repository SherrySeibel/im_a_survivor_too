class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :photo, null: true
      t.string :video, null: true
      t.references :user, index: true
      t.text :description, null: true

      t.timestamps null: false
    end
  end
end
