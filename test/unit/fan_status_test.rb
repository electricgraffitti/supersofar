# == Schema Information
#
# Table name: fan_statuses
#
#  id                 :integer(4)      not null, primary key
#  status_description :text
#  created_at         :datetime
#  updated_at         :datetime
#  fan_id             :integer(4)
#

require 'test_helper'

class FanStatusTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
