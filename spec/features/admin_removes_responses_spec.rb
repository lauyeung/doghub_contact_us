require 'spec_helper'

feature "visitor contacts us", %Q{
  As a site visitor
  I want to contact DogHub staff
  So that I can tell them how awesome they are
} do

# Acceptance Criteria:

# * I must specify a valid email address
# * I must specify a subject
# * I must specify a description
# * I must specify a first name
# * I must specify a last name

let(:responses){ FactoryGirl.create_list(:response, 1) }

  scenario "I see multiple responses" do
    responses
    prev_count = Response.count
    visit '/'
    within(".response_#{responses.first.id}") do
      click_link 'Destroy'
    end
    expect(Response.count).to eql(prev_count - 1)
  end


end
