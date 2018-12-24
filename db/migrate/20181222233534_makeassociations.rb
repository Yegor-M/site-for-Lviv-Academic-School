class Makeassociations < ActiveRecord::Migration[5.2]
  def change
    change_table :ideas do |t|
      t.belongs_to :user, index: true
      t.datetime :published_at
    end
  end
end
