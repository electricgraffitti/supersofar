class FanStatus < ActiveRecord::Base
  
  # Association
  belongs_to :fan
  
  # Validations
  validates_presence_of :status_description
  
  # Named Scopes
  named_scope :small_list, lambda { |limit| {:limit => limit }}
  named_scope :last_created, :order => "created_at DESC", :limit => 1
  
  #============================= Class Methods ==================================#
  
  
end
