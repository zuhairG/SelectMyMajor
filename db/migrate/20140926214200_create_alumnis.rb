class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.integer :university_id
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :age
      t.integer :graduation_year
      t.string :linkedin

      t.timestamps
    end
  end
end
