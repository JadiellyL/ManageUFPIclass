class AddApproveToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :approve, :boolean, default: false
  end
end
