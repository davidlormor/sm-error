require 'spec_helper'

feature 'adding a widget' do
  scenario 'from the homepage' do
    visit root_path
    click_link "Add Widget"
    fill_in "Name", with: "A Widget"
    click_button "Submit"
    expect(page).to have_content "A Widget"
  end

  scenario 'without a name' do
    visit new_widget_path
    click_button "Submit"
    expect(page).to have_content "Name is required"
  end
end