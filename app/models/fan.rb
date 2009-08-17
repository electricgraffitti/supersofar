# == Schema Information
# Schema version: 20090812050920
#
# Table name: fans
#
#  id                :integer(4)      not null, primary key
#  email             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  last_login_at     :datetime
#

class Fan < ActiveRecord::Base
  
  has_one :profile, :dependent => :destroy
  has_many :fan_statuses, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  
  
  validates_presence_of :email, :password
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  
  
  acts_as_authentic do |c|
    login_field :email
    validate_login_field :false
  end
  
  # Named Scopes
  
  
  # Sets Permalink Routes
  def to_param
    permalink = self.profile.first_name + "-" + self.profile.last_name
    "#{id}-#{permalink}"
  end
  
  def status 
    fstatus = self.fan_statuses.last
    if fstatus.blank?
      fstatus = "Status unavailable"
    else
      fstatus = fstatus.status_description
    end
  end
  
end
