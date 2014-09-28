class Ability
  include CanCan::Ability
  
  def initialize(user)
     user ||= User.new # guest user

        if user.role? :admin
          can :manage, :all
        else
          can :read, :all
          can :create, Comment do |comment|
            comment.try(:user) == user || user.role?(:alumni)
          end
          if user.role?(:university)
            can :create, Major
            can :create, University
            can :update, Major do |Major|
              article.try(:user) == user
            end
          end
        end
      end
    end