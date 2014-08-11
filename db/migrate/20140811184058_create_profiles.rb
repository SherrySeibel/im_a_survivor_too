class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false

      t.timestamps null: false
    end
    add_index :profiles, [:user_id]
  end
end
