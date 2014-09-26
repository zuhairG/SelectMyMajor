class Major < ActiveRecord::Base
  belongs_to :uni_major
  
  attr_accessible :description, :level, :name, :uni_major_id
end
