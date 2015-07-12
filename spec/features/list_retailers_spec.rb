require 'spec_helper'

RSpec.feature 'List Retailers', type: :feature do
  let(:target) { create(:retailer) }
  let(:mike) { create(:retailer, :with_stores, name: 'Mike\'s Place') }
  let!(:retailers) { [target, mike] }

  background { visit retailers_path }

  it 'lists all retailers with counts' do
    expect(page).to have_content 'Target 0'
    expect(page).to have_content 'Mike\'s Place 2'
  end

  it 'goes to show view when clicking Retailer name' do
    click_link 'Target'
    expect(page).to have_content 'Busiest Day of Week'
    expect(page.current_path).to eq "/retailers/#{target.id}"
  end
end
