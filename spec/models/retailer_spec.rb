require 'spec_helper'

describe Retailer do
  subject { create(:retailer) }
  describe '#event_stats' do
    it 'returns a EventStat object' do
      expect(subject.event_stats).to be_a(EventStats)
    end
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
