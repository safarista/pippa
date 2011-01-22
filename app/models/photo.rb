class Photo < ActiveRecord::Base
  belongs_to :profile
  belongs_to :business
  has_attached_file :screenshot, :styles => {:medium => "430x300>", :large => "900x630>" }
  validates :title, :summary, :url,
            :presence => true,
            :length => {:minimum =>4}
end