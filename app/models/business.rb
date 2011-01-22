class Business < ActiveRecord::Base
  belongs_to :account,  :class_name => "Account",
                        :foreign_key => "account_id"
  
  validates :name, :phone, :website, :description, :email,
            :street, :locality, :city, :region, :postcode,
            :country, :latitude, :longitude,
            :presence => true
  
  has_attached_file :logo, :styles => { :small => "150x50>", :medium => "200x90>"}
  has_many :photos
  has_many :reviews
  
  

  
end
