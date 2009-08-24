# == Schema Information
#
# Table name: comments
#
#  id               :integer(4)      not null, primary key
#  content          :text
#  commentable_id   :integer(4)
#  commentable_type :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  fan_id           :integer(4)
#

class Comment < ActiveRecord::Base
  
  belongs_to :commentable, :polymorphic => true
  belongs_to :fan
  
end
