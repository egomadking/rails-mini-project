class User < ApplicationRecord

  has_many :user_installed_gems
  has_many :installed_gems, through: :user_installed_gems

  def gem_notes(installed_gem)
    ig = UserInstalledGem.where("user_id == ? AND installed_gem_id == ?", self.id, installed_gem.id).take
    ig.user_notes
  end
  
end
