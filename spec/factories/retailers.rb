# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :retailer do
    name "MyString"
  end
end

# == Schema Information
#
# Table name: retailers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#
