require 'spec_helper'

describe Customer do
  pending "add some examples to (or delete) #{__FILE__}"
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
