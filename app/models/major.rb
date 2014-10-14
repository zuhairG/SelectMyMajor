class Major < ActiveRecord::Base

  has_many :uni_major
  has_many :university, through: :uni_majors
  attr_accessible :description, :level, :name, :uni_major_id
  
  LEVELS = %w["Bachelors", "Masters", "PhD"]
  
end
