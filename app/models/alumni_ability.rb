class AlumniAbility  < ActiveRecord::Base
  include CanCan::Ability
    def initialize(alumni)
      alumni ||= Alumni.new
      
      
      can :create, Alumni
      can :manage, Alumni , :id => alumni.id
     # can :edit, Application, :student_id => user.id
     # can :destroy, Application, :student_id => user.id
      can :read, University
<<<<<<< HEAD
      
=======
	  can :invite, Alumni
>>>>>>> 93082f1ba69fbe35d39b2ae8c1f82087d9b90d25
  end
end