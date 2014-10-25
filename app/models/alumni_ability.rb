class AlumniAbility  < ActiveRecord::Base
  include CanCan::Ability
    def initialize(alumni)
      alumni ||= Alumni.new
      
      
      can :create, Alumni
      can :manage, Alumni , :id => alumni.id
     # can :edit, Application, :student_id => user.id
     # can :destroy, Application, :student_id => user.id
      can :read, University
	  can :invite, Alumni
  end
end