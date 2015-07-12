require 'spec_helper'

describe Event do
  subject { create(:event) }

  describe 'scope' do
    let!(:events) do
      [create(:event, event_at: '2015-07-03 02:44:17'), # Friday at 2:00
       create(:event, event_at: '2015-07-17 16:44:17'), # Friday at 16:00
       create(:event, event_at: '2015-07-12 16:44:17')] # Sunday at 16:00
    end

    describe '::group_by_dow' do
      it 'returns events grouped by day of week' do
        grouped_events = Event.group_by_dow.order('visits desc').to_a
        expect(grouped_events.first.dow).to eq 5
        expect(grouped_events.first.visits).to eq 2
        expect(grouped_events.last.dow).to eq 0
        expect(grouped_events.last.visits).to eq 1
      end
    end

    describe '::group_by_hour' do
      it 'returns events grouped by hour of day' do
        grouped_events = Event.group_by_hour.order('visits desc').to_a
        expect(grouped_events.first.hour).to eq 16
        expect(grouped_events.first.visits).to eq 2
        expect(grouped_events.last.hour).to eq 2
        expect(grouped_events.last.visits).to eq 1
      end
    end
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
