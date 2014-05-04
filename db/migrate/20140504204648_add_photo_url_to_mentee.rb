class AddPhotoUrlToMentee < ActiveRecord::Migration
  def change
    add_column :mentees, :photo_url, :string, :default => "http://webzealous.com/images/profile-image.jpg"
  end
end
