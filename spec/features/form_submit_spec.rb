# encoding: utf-8
require "spec_helper"

def submit_form_with(code)
  visit root_path
  fill_in 'number', with: code
  click_button "track your order"
end

feature "user submits form" do
  scenario "with valid DHL tracking code", js: true do
    submit_form_with "054655196483"
    expect(page).to have_content('status of your order with tracking N° 054655196483')
    expect(page).to have_css 'table', text: "successful delivered"
  end
  
  scenario "with valid FedEx code", js: true do
    submit_form_with "1010098142170009131600578986691790"
    expect(page).to have_content('status of your order with tracking N° 1010098142170009131600578986691790')
  end
  
  scenario "with invalid code", js: true do
    submit_form_with "123"
    sleep 0.1
    expect(page.driver.alert_messages).to have_content "invalid"
  end
  
  scenario "with no code", js: true do
    submit_form_with ""
    expect(page).to have_content('no tracking code present')
  end
end