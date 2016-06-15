module UserRolesHelper

  def assign_recruiter_role
    if current_user.has_role? :candidate
      current_user.remove_role :candidate
    end
    current_user.add_role :recruiter
  end
end

def assign_candidate_role
  if current_user.has_role? :recruiter
    current_user.remove_role :recruiter
  end
  current_user.add_role :candidate
end
