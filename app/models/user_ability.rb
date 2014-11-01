class UserAbility < ActiveRecord::Base
  include CanCan::Ability
  
  def initialize(user)
     user ||= User.new # guest user

        if user.role == "admin"
          can :manage, :all
        
        elsif user.role == "University"
          can :manage, :Major
          can :manage, :University
        else
          can :read, :all
		  can :searchUniversity, University
        end
      end
    end