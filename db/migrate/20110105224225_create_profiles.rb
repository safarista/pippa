class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.references :user
      t.string  :name
      t.string  :title
      t.integer :phone
      t.string  :position
      t.string  :website
      t.text    :scratch
      t.string  :street
      t.string  :locality
      t.string  :city
      t.string  :region
      t.string  :postcode
      t.string  :country
      
      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
