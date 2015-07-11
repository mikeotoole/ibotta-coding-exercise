class Store < ActiveRecord::Base
  belongs_to :retailer
  has_many :events
end

# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  retailer_id :integer
#  address     :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :string(255)
#  lat         :float
#  long        :float
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_stores_on_retailer_id  (retailer_id)
#
