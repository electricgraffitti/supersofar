# == Schema Information
#
# Table name: shows
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  description  :text
#  venue        :string(255)
#  address      :string(255)
#  date         :datetime
#  other_bands  :string(255)
#  ticket_price :string(255)
#  permalink    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
