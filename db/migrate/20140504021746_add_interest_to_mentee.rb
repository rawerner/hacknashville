class AddInterestToMentee < ActiveRecord::Migration
  def change
    add_column :mentees, :interest, :string, :array => true
  end
end
