# == Schema Information
# Schema version: 20090709033159
#
# Table name: admins
#
#  id                :integer(4)      not null, primary key
#  username          :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Admin < ActiveRecord::Base
  
  acts_as_authentic
  
end
