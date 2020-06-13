class CreateBishlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :bishlogs do |t|
      t.string :user
      t.text :content
    end
  end
end
