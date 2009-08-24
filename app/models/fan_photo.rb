# == Schema Information
#
# Table name: fan_photos
#
#  id                     :integer(4)      not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  fan_photo_album_id     :integer(4)
#  permalink              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  fan_photo_file_name    :string(255)
#  fan_photo_content_type :string(255)
#  fan_photo_file_size    :integer(4)
#  fan_photo_updated_at   :datetime
#

class FanPhoto < ActiveRecord::Base
  
  belongs_to :fan_photo_album
  has_many :comments, :as => :commentable, :dependent => :destroy
  # Validations
  validates_presence_of :title, :description
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # PaperClip
  has_attached_file :fan_photo, 
                    :styles => { :medium => "300x201>", :small => "200x134>", :thumb => "100x67>" },
                    :url => "/fan_photos/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/fan_photos/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :fan_photo_file_name, :fan_photo_content_type, :fan_photo_file_size
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  # def to_param
  #   "#{id}-#{permalink}"
  # end
  
end
