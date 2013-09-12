require 'spec_helper'

feature "admin browses visitor submissions", %Q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action
} do

# Acceptance Criteria:

# * I can see a list of all contact inquiries



  scenario "I see multiple responses" do
    response = FactoryGirl.create(:response)
    visit '/'
    expect(page).to have_content(response.subject)
    expect(Response.count).to eql(1)
  end



end
