class AddAlumniIdToMajor < ActiveRecord::Migration
  def change
    add_column :majors, :alumni_id, :integer
  end
end
