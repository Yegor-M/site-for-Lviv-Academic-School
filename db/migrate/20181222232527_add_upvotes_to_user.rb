class AddUpvotesToUser < ActiveRecord::Migration[5.2]
  change_column :ideas, :author, :integer
end
