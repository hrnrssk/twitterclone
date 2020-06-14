class RemoveUserFromBishlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :bishlogs, :user, :string
  end
end
