class InstalledGem < ApplicationRecord

  has_many :user_installed_gems
  has_many :users, through: :user_installed_gems
end
