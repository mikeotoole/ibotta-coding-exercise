# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    retailer
    address '6767 S Clinton St'
    city 'Englewood'
    state 'CO'
    zip '80112'
    lat 39.5932
    long(-104.882)
  end
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
