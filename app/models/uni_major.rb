class UniMajor < ActiveRecord::Base
  belongs_to :univesity
  belongs_to :major
  attr_accessible :major_id, :university_id
end
