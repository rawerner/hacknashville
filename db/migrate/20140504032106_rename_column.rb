class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :requests, :approval, :approval_status
  end
end
