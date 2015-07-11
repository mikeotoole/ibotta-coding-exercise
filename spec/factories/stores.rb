# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    retailer nil
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    lat 1.5
    long 1.5
  end
end

# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  retailer_id :integer
#  address     :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :string(255)
#  lat         :float
#  long        :float
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_stores_on_retailer_id  (retailer_id)
#
