class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :email
      t.integer :alumni_id
      t.integer :uni_major_id
      t.string :city
      t.string :state
      t.integer :balance

      t.timestamps
    end
  end
end
