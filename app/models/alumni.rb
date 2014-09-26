class Alumni < ActiveRecord::Base
  belongs_to :university
  
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id
end
