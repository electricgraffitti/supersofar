# == Schema Information
#
# Table name: shows
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  description  :text
#  permalink    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  venue        :string(255)
#  address      :string(255)
#  date         :datetime
#  ticket_price :string(255)
#  other_bands  :string(255)
#

class Show < ActiveRecord::Base
  
  # Validations
  validates_presence_of :title, :description, :permalink, :venue, :ticket_price, :address
  
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
  named_scope :upcoming, :order => "date ASC", :conditions => ["date > ?", Time.now]
  #============================= Class Methods ==================================#
  
  # Sets Permalink Routes
  def to_param
    "#{id}-#{permalink}"
  end
  
end
