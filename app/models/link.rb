# == Schema Information
# Schema version: 20090709033159
#
# Table name: links
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Link < ActiveRecord::Base
end