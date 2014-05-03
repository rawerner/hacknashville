class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.datetime :create_date

      t.timestamps
    end
  end
end
