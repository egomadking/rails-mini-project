class CreateInstalledGems < ActiveRecord::Migration[6.1]
  def change
    create_table :installed_gems do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
