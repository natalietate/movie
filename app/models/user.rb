class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_watchlists
  has_many :user_groups
  has_many :movies, through: :user_watchlists
  has_many :groups, through: :user_groups

end
