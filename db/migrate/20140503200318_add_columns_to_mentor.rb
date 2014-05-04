class AddColumnsToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :first_name, :string
    add_column :mentors, :last_name, :string
    add_column :mentors, :photo_url, :string
    add_column :mentors, :skills, :integer
  end
end
