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

  scenario "I specify valid information" do
    prev_count = Response.count
    visit '/'
    click_link 'Contact Us'
    fill_in 'First name', with: 'Johnny'
    fill_in 'Last name', with: 'Boursiquot'
    fill_in 'Email', with: 'johnny@johnny.com'
    fill_in 'Subject', with: 'You guys rock my world'
    fill_in 'Description', with: 'Now I have somewhere to share my dog narcissism'
    click_button 'Submit'
    expect(page).to have_content("Thanks for your feedback!")
    expect(Response.count).to eql(prev_count + 1)
  end

   scenario "I specify invalid information" do
    prev_count = Response.count
    visit '/'
    click_link 'Contact Us'
    click_button 'Submit'
    expect(page).to have_content("can't be blank")
    expect(Response.count).to eql(prev_count)
  end


end
