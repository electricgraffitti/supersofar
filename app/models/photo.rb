# == Schema Information
#
# Table name: photos
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  photo_album_id     :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer(4)
#  photo_updated_at   :datetime
#  permalink          :string(255)
#  author             :string(255)
#

class Photo < ActiveRecord::Base
  
  belongs_to :photo_album
  has_many :comments, :as => :commentable, :dependent => :destroy
  # Validations
  validates_presence_of :title, :description, :permalink, :author
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # PaperClip
  has_attached_file :photo, 
                    :styles => { :medium => "300x201>", :small => "200x134>", :thumb => "100x67>" },
                    :url => "/photos/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/photos/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :photo_file_name, :photo_content_type, :photo_file_size
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
  
end
