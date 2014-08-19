class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :photo
      t.string :video
      t.references :user, index: true
      t.text :description

      t.timestamps null: false
    end
  end
end
