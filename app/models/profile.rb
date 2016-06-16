class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :picture, :user_type, presence: true

  mount_uploader :picture, ProfilePictureUploader

  def full_name
    "#{first_name} #{last_name}"
  end


  def make_superadmin
    add_role :superadmin
    redirect_to :back
  end

  def make_admin
    current_user.add_role :admin
    redirect_to :back
  end

  def make_staff
    current_user.add_role :staff
    redirect_to :back
  end

  def make_recruiter
    current_user.add_role :recruiter
    redirect_to :back
  end

  def make_mentor
    current_user.add_role :mentor
    redirect_to :back
  end

  def make_candidate
    current_user.add_role :candidate
    redirect_to :back
  end

end
