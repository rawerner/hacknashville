class AddColumnsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :mentor_id, :string
    add_column :requests, :mentee_id, :string
  end
end
