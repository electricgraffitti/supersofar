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
  
  belongs_to :profile
  
  
  validates_presence_of :email, :password
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
  
  
  acts_as_authentic do |c|
    login_field :email
    validate_login_field :false
  end
  
end
