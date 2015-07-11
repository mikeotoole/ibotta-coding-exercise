class Retailer < ActiveRecord::Base
  has_many :stores
end

# == Schema Information
#
# Table name: retailers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
