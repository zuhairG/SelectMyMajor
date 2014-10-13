class University < ActiveRecord::Base
  has_many :uni_majors
  has_many :majors, through: :unimajors
  has_many :users
  attr_accessible :address, :alumni_id, :balance, :city, :email, :name, :phone, :state, :uni_major_id
end
