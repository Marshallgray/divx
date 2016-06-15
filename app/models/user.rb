class User < ApplicationRecord
  include UserRolesHelper
  has_one :profile
  has_one :talent
  has_many :companies

  has_many :user_roles
  has_many :roles, through: :user_roles

  rolify


  # def assign_recruiter_role
  # end
  #
  # def assign_candidate_role
  # end




  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
