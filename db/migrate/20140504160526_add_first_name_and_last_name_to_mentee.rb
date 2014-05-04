class AddFirstNameAndLastNameToMentee < ActiveRecord::Migration
  def change
    add_column :mentees, :first_name, :string
    add_column :mentees, :last_name, :string
  end
end
