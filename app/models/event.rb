class Event < ActiveRecord::Base
  belongs_to :store
  belongs_to :customer, foreign_key: :customer_id, primary_key: :customer_id
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
