# == Schema Information
# Schema version: 20090812050920
#
# Table name: profiles
#
#  id                  :integer(4)      not null, primary key
#  fan_id              :integer(4)
#  first_name          :string(255)
#  last_name           :string(255)
#  nickname            :string(255)
#  address             :string(255)
#  city                :string(255)
#  state_id            :integer(4)
#  zipcode             :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#

class Profile < ActiveRecord::Base
  
  belongs_to :fan
  belongs_to :state
  
  # Association
  has_many :comments, :as => :commentable, :dependent => :destroy
  
  # Validations
  validates_presence_of :nickname
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
  # PaperClip 100x67 is a dimension based on widescreen ratios
  has_attached_file :avatar, 
                    :styles => { :small => "200x134>", :thumb => "100x67>" },
                    :url => "/avatars/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/avatars/:id/:style_:basename.:extension"
  
  # Attrs
  attr_protected :avatar_file_name, :avatar_content_type, :avatar_file_size
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC"
  
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    permalink = self.first_name + "-" + self.last_name
    "#{id}-#{permalink}"
  end
  
  def full_name
    full_name = self.first_name + " " + self.last_name
  end
  
end
