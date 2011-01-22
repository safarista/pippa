class AddEmailToProfile < ActiveRecord::Migration
  def self.up
    add_column :profiles, :email,     :string
    add_column :profiles, :summary,   :string
    add_column :profiles, :latitude,  :string
    add_column :profiles, :longitude, :string
  end

  def self.down
    remove_column :profiles, :email
    remove_column :profiles, :summary
    remove_column :profiles, :latitude
    remove_column :profiles, :longitude
  end
end
