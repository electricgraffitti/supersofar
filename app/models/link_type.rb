# == Schema Information
# Schema version: 20090812050920
#
# Table name: link_types
#
#  id         :integer(4)      not null, primary key
#  link_type  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class LinkType < ActiveRecord::Base
  
  has_many :links
  
end
