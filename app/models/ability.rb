class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :staff
        can :read, :all
        can :update, Talent
      elsif user.has_role? :recruiter
        can :read, Profile, user_id: user.id
        can :manage, Profile, user_id: user.id
        can :read, Talent
        can :read, Company
        can :manage, Company
        can :manage, BusinessLocation
        can :manage, JobRole

        # can :manage, BusinessLocation, user_id: user.id
        # can :manage, JobPosition, user_id: user.id
        # can :read, :create, :update, :destroy, Interview, user_id: user.id
      else user.has_role? :candidate
        can :read, Profile, user_id: user.id
        can :manage, Profile, user_id: user.id
        can :manage, Talent, user_id: user.id
        can :read, Company
        can :edit, Talent, user_id: user.id
        cannot :index, Talent
        # can :read, :update, Interview
      end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
