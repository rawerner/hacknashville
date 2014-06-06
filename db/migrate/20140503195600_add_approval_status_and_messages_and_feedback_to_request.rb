class AddApprovalStatusAndMessagesAndFeedbackToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :approval, :string
    add_column :requests, :messages, :string, :array => true
    add_column :requests, :feedback, :string
  end
end
