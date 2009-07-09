# == Schema Information
# Schema version: 20090709033159
#
# Table name: songs
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  permalink   :string(255)
#  album_id    :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class Song < ActiveRecord::Base
end
