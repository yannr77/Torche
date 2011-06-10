class Ability
  include CanCan::Ability

  def initialize(surfer)
    surfer ||= Surfer.new
    if surfer.admin?
      can :manage, :all
    elsif surfer.surfer?
      can [:show,:index], Surfer
      can [:show,:index], Board
    end
  end
end