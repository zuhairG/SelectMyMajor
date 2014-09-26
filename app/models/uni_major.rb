class UniMajor < ActiveRecord::Base
  belongs_to :univesity
  has_one :major
  attr_accessible :major_id, :university_id
end
