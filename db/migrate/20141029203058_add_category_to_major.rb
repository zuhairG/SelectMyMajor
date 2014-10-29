class AddCategoryToMajor < ActiveRecord::Migration
  def change
    add_column :majors, :category, :string
  end
end
