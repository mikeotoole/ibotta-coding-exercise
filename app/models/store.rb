class Store < ActiveRecord::Base
  belongs_to :retailer, counter_cache: true
  has_many :events

  scope :with_events, -> { where.not(events_count: 0) }
end

# == Schema Information
#
# Table name: stores
#
#  id           :integer          not null, primary key
#  retailer_id  :integer
#  address      :string(255)
#  city         :string(255)
#  state        :string(255)
#  zip          :string(255)
#  lat          :float
#  long         :float
#  created_at   :datetime
#  updated_at   :datetime
#  events_count :integer          default(0), not null
#
# Indexes
#
#  index_stores_on_events_count  (events_count)
#  index_stores_on_retailer_id   (retailer_id)
#
