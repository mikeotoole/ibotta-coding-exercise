require 'spec_helper'

describe EventStats do
  let(:retailer) { create(:retailer, :with_events) }
  subject { EventStats.new(retailer) }

  context 'when object has events' do
    describe '#count' do
      it 'returns count' do
        expect(subject.count).to eq 4
      end
    end

    describe '#busiest_dow' do
      it 'returns day of week as String' do
        expect(subject.busiest_dow).to eq 'Friday'
      end
    end

    describe '#busiest_dow_visits' do
      it 'returns total number of visits for dow' do
        expect(subject.busiest_dow_visits).to eq 2
      end
    end

    describe '#busiest_hour' do
      it 'returns busiest hour of day as String' do
        expect(subject.busiest_hour).to eq '4pm'
      end
    end

    describe '#busiest_hour_visits' do
      it 'returns total number of visits for hour' do
        expect(subject.busiest_hour_visits).to eq 3
      end
    end
  end

  context 'when object has no events' do
    let(:retailer) { create(:retailer) }

    describe '#count' do
      it 'returns count' do
        expect(subject.count).to eq 0
      end
    end

    describe '#busiest_dow' do
      it 'returns nil' do
        expect(subject.busiest_dow).to eq nil
      end
    end

    describe '#busiest_dow_visits' do
      it 'returns nil' do
        expect(subject.busiest_dow_visits).to eq nil
      end
    end

    describe '#busiest_hour' do
      it 'returns nil' do
        expect(subject.busiest_hour).to eq nil
      end
    end

    describe '#busiest_hour_visits' do
      it 'returns nil' do
        expect(subject.busiest_hour_visits).to eq nil
      end
    end
  end
end
