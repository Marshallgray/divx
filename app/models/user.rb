class User < ApplicationRecord
  has_one :profile
  has_one :talent
  has_many :companies

  has_many :user_roles
  has_many :roles, through: :user_roles

  rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
