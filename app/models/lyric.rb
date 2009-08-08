# == Schema Information
# Schema version: 20090712124759
#
# Table name: lyrics
#
#  id          :integer(4)      not null, primary key
#  description :text
#  permalink   :string(255)
#  song_id     :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class Lyric < ActiveRecord::Base
  
  belongs_to :song
  
  
  # Validations
  validates_presence_of :description, :permalink
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # RedCloth (textilize)
  # acts_as_textiled  :description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
end
