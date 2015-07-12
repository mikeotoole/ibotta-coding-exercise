require 'spec_helper'

RSpec.feature 'List Retailers', type: :feature do
  let(:target) { create(:retailer, :with_events) }

  background { visit retailer_path(target) }

  it 'lists stats about retailer' do
    expect(page).to have_content 'Target'
    expect(page).to have_content 'Stores 2 4'
    expect(page).to have_content 'Busiest Day of Week Friday 2'
    expect(page).to have_content 'Busiest Hour of Day 4pm 3'
  end

  it 'shows map', js: true do
    expect(page).to have_content 'Map Data Terms of Use'
  end
end
