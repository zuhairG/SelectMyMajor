class University < ActiveRecord::Base

  has_many :uni_majors
  has_many :majors, through: :uni_majors
  has_many :alumni

  attr_accessible :address, :alumni_id, :balance, :city, :email, :name, :phone, :state, :uni_major_id, :picture, :majors, :filterrific, :major_ids
  has_attached_file :picture, :default_url => "image1.jpg"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/


  filterrific(
  
  filter_names: [
    :name,
    :address,
    :city,
    :state
  ]
)

def self.options_for_sorted_by
  [
    ['Name (a-z)', 'name_asc'],
    ['Registration date (newest first)', 'created_at_desc'],
    ['Registration date (oldest first)', 'created_at_asc'],
    ['Country (a-z)', 'country_name_asc']
  ]
end

end
