# == Schema Information
#
# Table name: fan_photos
#
#  id                     :integer(4)      not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  fan_photo_album_id     :integer(4)
#  permalink              :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  fan_photo_file_name    :string(255)
#  fan_photo_content_type :string(255)
#  fan_photo_file_size    :integer(4)
#  fan_photo_updated_at   :datetime
#

require 'test_helper'

class FanPhotoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
