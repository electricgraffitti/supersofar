# == Schema Information
#
# Table name: fan_photo_albums
#
#  id            :integer(4)      not null, primary key
#  fan_id        :integer(4)
#  name          :string(255)
#  private_album :boolean(1)
#  created_at    :datetime
#  updated_at    :datetime
#

class FanPhotoAlbum < ActiveRecord::Base
  
  has_many :fan_photos, :dependent => :destroy
  belongs_to :fan
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  # def to_param
  #   "#{id}-#{permalink}"
  # end
  
  #pulls the phots from the form
  def fan_photos=(photos)
    photos.each do |photo|
      photos.build(photo)
    end
  end
  
end
