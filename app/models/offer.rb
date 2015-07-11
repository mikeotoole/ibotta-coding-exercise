class Offer < ActiveRecord::Base
  has_many :tasks
end

# == Schema Information
#
# Table name: offers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  terms       :text
#  image_url   :string(255)
#  expiration  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#
