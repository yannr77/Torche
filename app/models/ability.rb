class Ability
  include CanCan::Ability

  def initialize(surfer)
    surfer ||= Surfer.new
    if surfer.admin?
      can :manage, :all
    elsif surfer.surfer?
      can :show, Surfer
    end
  end
end