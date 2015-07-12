class Event < ActiveRecord::Base
  belongs_to :store, counter_cache: true
  belongs_to :customer, foreign_key: :customer_id, primary_key: :customer_id

  date_part_group_lambda = lambda do |date_part_on|
    select("date_part('#{date_part_on}', event_at) AS #{date_part_on}, "\
           'COUNT(*) AS visits').group(date_part_on)
  end

  scope :group_by_dow, -> { date_part_group_lambda[:dow] }
  scope :group_by_hour, -> { date_part_group_lambda[:hour] }
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
