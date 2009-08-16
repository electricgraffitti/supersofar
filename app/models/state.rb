# == Schema Information
# Schema version: 20090812050920
#
# Table name: states
#
#  id           :integer(4)      not null, primary key
#  abbreviation :string(2)
#  full_name    :string(255)
#  display      :boolean(1)      default(TRUE)
#  created_by   :integer(4)
#  updated_by   :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

class State < ActiveRecord::Base
  
  has_many :profiles
  
  named_scope :displayable, :conditions => { :display => 1 }, :order => :abbreviation
end
