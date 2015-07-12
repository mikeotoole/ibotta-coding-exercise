require 'spec_helper'

describe Store do
  subject { create(:store) }

  describe 'scope' do
    describe '::with_events' do
      let!(:store_with_event) { create(:event).store }

      it 'only returns stores that have events' do
        expect(subject.events.count).to eq 0
        expect(Store.with_events).to eq [store_with_event]
      end
    end
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
