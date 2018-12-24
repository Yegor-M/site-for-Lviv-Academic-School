class AddimagestoIdea < ActiveRecord::Migration[5.2]
  remove_column :ideas, :author
  add_column :ideas, :imagepath, :string
end
