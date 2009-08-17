# == Schema Information
# Schema version: 20090808030702
#
# Table name: songs
#
#  id                :integer(4)      not null, primary key
#  album_id          :integer(4)
#  title             :string(255)
#  description       :text
#  track_number      :string(255)
#  active            :boolean(1)
#  downloadable      :boolean(1)
#  buy               :boolean(1)
#  itunes_link       :string(255)
#  cd_baby_link      :string(255)
#  rhapsody_link     :string(255)
#  amazon_link       :string(255)
#  permalink         :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  song_file_name    :string(255)
#  song_content_type :string(255)
#  song_file_size    :integer(4)
#  song_updated_at   :datetime
#

class Song < ActiveRecord::Base
  
  belongs_to :album
  has_many :lyrics, :class_name => "Lyric"
  accepts_nested_attributes_for :lyrics, :allow_destroy => true
  
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  
  # Validations
  validates_presence_of :title, :description, :permalink
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # PaperClip
  has_attached_file :song,
                    :style => {},
                    :url => "/songs/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/songs/:id/:style_:basename.:extension"
  
  # PaperClip Validations
  validates_attachment_presence :song
  validates_attachment_content_type :song, :content_type => ['application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mpg', 'audio/mp3'], :message => "Dood...This is not an mp3 file"
  # Attrs
  attr_protected  :song_file_name, :song_content_type, :song_file_size
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  named_scope :active, :conditions => {:active => true}
  named_scope :downloadable, :conditions => {:downloadable => true}
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
end
