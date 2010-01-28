# == Schema Information
#
# Table name: songs
#
#  id                :integer(4)      not null, primary key
#  title             :string(255)
#  description       :text
#  permalink         :string(255)
#  album_id          :integer(4)
#  created_at        :datetime
#  updated_at        :datetime
#  song_file_name    :string(255)
#  song_content_type :string(255)
#  song_file_size    :integer(4)
#  song_updated_at   :datetime
#  track_number      :string(255)
#  active            :boolean(1)
#  downloadable      :boolean(1)
#  buy               :boolean(1)
#  itunes_link       :string(255)
#  cd_baby_link      :string(255)
#  rhapsody_link     :string(255)
#  amazon_link       :string(255)
#

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
