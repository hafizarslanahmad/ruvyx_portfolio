class AddCategoryToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :category, :integer
  end
end
