class Alumni < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me 
  belongs_to :university
  has_one :uni_major, through: :university
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id

end

public 

def role? 

	return false
	
end

