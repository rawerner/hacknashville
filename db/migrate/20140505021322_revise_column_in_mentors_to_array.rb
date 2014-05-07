class ReviseColumnInMentorsToArray < ActiveRecord::Migration
  def change
    remove_column :mentors, :skills
    add_column :mentors, :skills, :string, :array => true
  end
end
