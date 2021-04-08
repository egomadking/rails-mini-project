class CreateUserInstalledGems < ActiveRecord::Migration[6.1]
  def change
    create_table :user_installed_gems do |t|
      t.references :user, null: false, foreign_key: true
      t.references :installed_gem, null: false, foreign_key: true
      t.text :user_notes

      t.timestamps
    end
  end
end
