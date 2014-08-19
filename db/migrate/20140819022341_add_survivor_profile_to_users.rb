class AddSurvivorProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :cancer_type, :string
    add_column :users, :diagnosis_date, :integer
    add_column :users, :story, :text
  end
end
