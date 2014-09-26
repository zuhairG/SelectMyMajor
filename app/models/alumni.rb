class Alumni < ActiveRecord::Base
  belongs_to :university
  has_one :uni_major :through :university
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id
end
