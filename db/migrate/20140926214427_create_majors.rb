class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.integer :uni_major_id
      t.string :name
      t.string :description
      t.string :level

      t.timestamps
    end
  end
end
