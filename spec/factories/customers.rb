# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :customer do
    customer_id { SecureRandom.hex(16) }
    zip '80534'
    lat 40.3355
    long(-104.924)
  end
end

# == Schema Information
#
# Table name: customers
#
#  id          :integer          not null, primary key
#  customer_id :string(255)
#  zip         :string(255)
#  lat         :float
#  long        :float
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_customers_on_customer_id  (customer_id) UNIQUE
#
