# == Schema Information
#
# Table name: profiles
#
#  id                  :integer(4)      not null, primary key
#  fan_id              :integer(4)
#  first_name          :string(255)
#  last_name           :string(255)
#  nickname            :string(255)
#  address             :string(255)
#  city                :string(255)
#  zipcode             :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer(4)
#  avatar_updated_at   :datetime
#  state_id            :integer(4)
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
