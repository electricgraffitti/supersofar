# == Schema Information
#
# Table name: fan_photo_albums
#
#  id            :integer(4)      not null, primary key
#  fan_id        :integer(4)
#  name          :string(255)
#  private_album :boolean(1)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class FanPhotoAlbumTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
