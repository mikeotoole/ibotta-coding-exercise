# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    store nil
    customer_id "MyString"
    lat 1.5
    long 1.5
    event_at "2014-05-21 16:44:17"
  end
end

# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  store_id    :integer
#  customer_id :string(255)
#  lat         :float
#  long        :float
#  event_at    :datetime
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_events_on_customer_id  (customer_id)
#  index_events_on_store_id     (store_id)
#
