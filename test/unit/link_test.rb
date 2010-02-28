# == Schema Information
#
# Table name: links
#
#  id                      :integer(4)      not null, primary key
#  title                   :string(255)
#  description             :text
#  permalink               :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  link_image_file_name    :string(255)
#  link_image_content_type :string(255)
#  link_image_file_size    :integer(4)
#  link_image_updated_at   :datetime
#  link                    :string(255)
#  link_type_id            :integer(4)
#

require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
