class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.references  :account
      t.string      :name
      t.string      :street
      t.string      :locality
      t.string      :city
      t.string      :region
      t.string      :postcode
      t.string      :country
      t.string      :latitude
      t.string      :longitude
      t.integer     :phone
      t.string      :website
      t.text        :description

      t.timestamps
    end
  end

  def self.down
    drop_table :businesses
  end
end
