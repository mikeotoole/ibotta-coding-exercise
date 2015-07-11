class Customer < ActiveRecord::Base
  has_many :events, foreign_key: :customer_id, primary_key: :customer_id
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
