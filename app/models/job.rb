class Job < ActiveRecord::Base
  belongs_to :category
  
  validates :job_title, :job_location, :job_description, :company_apply_to, 
            :company_name, :company_url, :company_email, :presence => true
  validates :company_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, 
                                         :on => :create }
  
  has_attached_file :company_logo, :styles => {:normal => "190x150>"}
end