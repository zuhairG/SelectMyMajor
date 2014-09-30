class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :uid, :provider
  # attr_accessible :title, :body
  
  ROLES = %w["University", "Alumni"]
  def roles=(roles)
      self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
    end

    def roles
      ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
    end

    def role?(role)
      roles.include? role.to_s
    end
    def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
        data = access_token.info
        user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
        if user
          return user
        else
          registered_user = User.where(:email => access_token.info.email).first
          if registered_user
            return registered_user
          else
            user = User.create(name: data["name"],
              provider:access_token.provider,
              email: data["email"],
              uid: access_token.uid ,
              password: Devise.friendly_token[0,20],
            )
          end
       end
    end
  
end
