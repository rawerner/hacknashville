class ChangeMentorPhotoUrl < ActiveRecord::Migration
  def up
    change_table :mentors do |t|
      t.change :photo_url, :string, :default => "http://webzealous.com/images/profile-image.jpg"
    end
  end

  def down
    change_table :mentors do |t|
      t.change :photo_url, :string
    end
  end
end
