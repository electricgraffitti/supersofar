# == Schema Information
# Schema version: 20090808030702
#
# Table name: albums
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  itunes_url         :string(255)
#  cd_baby_url        :string(255)
#  rhapsody_url       :string(255)
#  amazon_url         :string(255)
#  permalink          :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  cover_file_name    :string(255)
#  cover_content_type :string(255)
#  cover_file_size    :integer(4)
#  cover_updated_at   :datetime
#

class Album < ActiveRecord::Base
  
  has_many :songs
  has_many :lyrics, :through => :songs
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # PaperClip
  has_attached_file :cover, 
                    :styles => { :medium => "350x350>", :small => "200x200>", :thumb => "100x100>" },
                    :url => "/album_covers/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/album_covers/:id/:style_:basename.:extension"
  # Attrs
  attr_protected :cover_file_name, :cover_content_type, :cover_file_size
  
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
