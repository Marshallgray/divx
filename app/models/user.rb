class User < ApplicationRecord
  has_one :profile
  has_one :talent
  has_many :companies

  has_many :user_roles
  has_many :roles, through: :user_roles

  rolify

  def assign_role(role)
    self.add_role role.to_sym
  end

  def revoke_role(role)
    self.remove_role role.to_sym
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
