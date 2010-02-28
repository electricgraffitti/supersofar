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

class Link < ActiveRecord::Base
  
  belongs_to :link_type
  
  # RedCloth (textilize)
  acts_as_textiled  :description
  
  # PaperClip
  has_attached_file :link_image, 
                    :styles => { :thumb => "50x50>" },
                    :url => "/link_images/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/link_images/:id/:style_:basename.:extension"
  
  
end
