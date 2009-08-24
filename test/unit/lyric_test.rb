# == Schema Information
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

require 'test_helper'

class LyricTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
