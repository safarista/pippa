class Profile < ActiveRecord::Base
  belongs_to :account
  has_many :photos,     :dependent => :destroy
  has_attached_file :avatar, :styles => { :small => "48x48#", :thumb => "221x272", :large => "300x600" }
  has_many :businesses, :dependent => :destroy
  validates :name, :title, :phone, :position, :website, 
            :email, :scratch, :summary, :latitude, :longitude, :nickname,
            :scratch, :street, :locality, :city, :region, :postcode, :country, 
            :presence => true
             
end