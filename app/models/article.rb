# == Schema Information
# Schema version: 20090709033159
#
# Table name: articles
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  description :text
#  permalink   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  author      :string(255)
#

class Article < ActiveRecord::Base
  
  # Association
  has_many :assets, :as => :attachable, :dependent => :destroy
  
  # Validations
  validates_presence_of :title, :description, :permalink, :author
  
  # Thinking Sphinx Indexes
  # define_index do
  #   indexes description
  #   indexes title
  # end
  
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
  
  #pulls the assets from the form
  def attachments=(attachments)
    attachments.each do |attachment|
      assets.build(attachment)
    end
  end
  
  def author_credentials
    time = self.created_at
    timestamp = time.strftime("%m/%d/%y at %I:%M%p")
    author = self.author
    credential = ("Posted on " + timestamp + " by " + author)
    return credential
  end
  
end
