require "spec_helper"

describe "tracking/_tracking_number_form.html.erb" do
  it "renders a form with a text field and a button" do
    render
    rendered.should have_selector('form',
      method: 'post',
      action: tracking_number_path
    ) do |form|
      form.should have_selector( 'input', type: 'text' )
      form.should have_selector( 'input', type: 'submit', value: "track your order" )
    end
  end
end