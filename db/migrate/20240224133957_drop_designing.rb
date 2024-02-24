class DropDesigning < ActiveRecord::Migration[7.1]
  def change
    drop_table :designings
  end
end
