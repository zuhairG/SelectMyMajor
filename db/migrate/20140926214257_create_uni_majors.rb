class CreateUniMajors < ActiveRecord::Migration
  def change
    create_table :uni_majors do |t|
      t.integer :university_id
      t.integer :major_id

      t.timestamps
    end
  end
end
