class AddIndexes < ActiveRecord::Migration[5.1]
  def change
    add_index :players, :id
    add_index :players, :name
    add_index :leagues, :id
  end
end
