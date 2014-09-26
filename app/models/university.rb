class University < ActiveRecord::Base
  attr_accessible :address, :alumni_id, :balance, :city, :email, :name, :phone, :state, :uni_major_id
end
