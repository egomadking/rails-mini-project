class UserInstalledGem < ApplicationRecord
  belongs_to :user
  belongs_to :installed_gem
end
