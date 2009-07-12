# == Schema Information
# Schema version: 20090711054515
#
# Table name: photo_albums
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

class PhotoAlbum < ActiveRecord::Base
  
  has_many :photos, :dependent => :destroy
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
  #pulls the phots from the form
  def photos=(photos)
    photos.each do |photo|
      photos.build(photo)
    end
  end
  
end
