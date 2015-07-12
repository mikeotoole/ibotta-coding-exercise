# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :retailer do
    name 'Target'

    trait :with_stores do
      after(:create) do |retailer|
        retailer.stores << FactoryGirl.build(:store, retailer: nil)
        retailer.stores << FactoryGirl.build(:store, retailer: nil)
      end
    end

    trait :with_events do
      with_stores

      after(:create) do |retailer|
        store1 = retailer.stores.first
        store2 = retailer.stores.last
        [create(:event, event_at: '2015-07-03 02:17:17', store: store1), # Friday at 2:00
         create(:event, event_at: '2015-07-17 16:44:17', store: store2), # Friday at 16:00
         create(:event, event_at: '2015-07-14 16:30:17', store: store1), # Tuesday at 16:00
         create(:event, event_at: '2015-07-12 16:21:17', store: store2)] # Sunday at 16:00
      end
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
