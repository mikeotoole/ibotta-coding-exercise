# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    name "MyString"
    description "MyText"
    terms "MyText"
    image_url "MyString"
    expiration "2014-02-06 11:08:57"
  end
end

# == Schema Information
#
# Table name: offers
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  terms       :text
#  image_url   :string(255)
#  expiration  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#
