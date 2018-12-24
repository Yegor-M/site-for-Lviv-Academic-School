class ChangedataToUser < ActiveRecord::Migration[5.2]
  change_column :ideas, :author, :user_id
end
