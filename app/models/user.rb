class User < ApplicationRecord

  has_many :user_installed_gems
  has_many :installed_gems, through: :user_installed_gems
end
