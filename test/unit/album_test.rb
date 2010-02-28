# == Schema Information
#
# Table name: albums
#
#  id                 :integer(4)      not null, primary key
#  title              :string(255)
#  description        :text
#  permalink          :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  cover_file_name    :string(255)
#  cover_content_type :string(255)
#  cover_file_size    :integer(4)
#  cover_updated_at   :datetime
#  itunes_url         :string(255)
#  cd_baby_url        :string(255)
#  rhapsody_url       :string(255)
#  amazon_url         :string(255)
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
