class Ability
  include CanCan::Ability
  
  def initialize(user)
     user ||= User.new # guest user

        if user.role == "admin"
          can :manage, :all
        
        elsif user.role == "University"
          can :manage, :Major
          can :manage, :University
           
        elsif user.role == "Alumni"
          #alumni ability goes here
        else
          can :read, :all
        end
      end
    end