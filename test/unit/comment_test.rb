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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
