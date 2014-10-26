class Alumni < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable , :invitable

  # Setup accessible (or protected) attributes for your model
  belongs_to :university
  has_one :uni_major, through: :university
  attr_accessible :age, :email, :graduation_year, :linkedin, :name, :phone, :university_id, :email, :password, :password_confirmation, :remember_me
  acts_as_messageable

end

public 

def role? 

	return false
	
end

def name 

return "You should add method :name in your Messageable model"
end

def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
  return "define_email@on_your.model"
  #if false
  #return nil
end
