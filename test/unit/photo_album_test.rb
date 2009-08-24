# == Schema Information
#
# Table name: photo_albums
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  permalink  :string(255)
#

require 'test_helper'

class PhotoAlbumTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
