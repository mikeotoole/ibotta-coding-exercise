class Retailer < ActiveRecord::Base
  has_many :stores
  has_many :events, through: :stores

  def event_stats
    EventStats.new(self)
  end
end

# == Schema Information
#
# Table name: retailers
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  stores_count :integer          default(0), not null
#
# Indexes
#
#  index_retailers_on_stores_count  (stores_count)
#
