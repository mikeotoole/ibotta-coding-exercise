require 'spec_helper'

describe Task do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: tasks
#
#  id            :integer          not null, primary key
#  offer_id      :integer
#  task_type     :string(255)
#  amount        :float
#  content       :text
#  url           :string(255)
#  thumbnail_url :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#
# Indexes
#
#  index_tasks_on_offer_id  (offer_id)
#
