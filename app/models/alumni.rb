class Alumni < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable , :invitable

  # Setup accessible (or protected) attributes for your model
  belongs_to :university
  has_one :major
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id, :email, :password, :password_confirmation, :remember_me, :major, :confirmed_at

end

public 

def role? 

	return false
	
end

