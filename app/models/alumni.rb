class Alumni < ActiveRecord::Base
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id
end
