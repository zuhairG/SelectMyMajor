class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
  belongs_to :university
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :uid, :provider
  # attr_accessible :title, :body

  def roles=(roles)
      self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
    end

    def roles
      ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
    end

    def role?(role)
      roles.include? role.to_s
    end
end
