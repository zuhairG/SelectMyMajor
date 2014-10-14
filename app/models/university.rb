class University < ActiveRecord::Base
  has_many :uni_majors
  has_many :majors, through: :uni_majors
  has_many :alumni
  attr_accessible :address, :alumni_id, :balance, :city, :email, :name, :phone, :state, :uni_major_id, :picture
  has_attached_file :picture, :default_url => "image1.jpg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  
  
end
