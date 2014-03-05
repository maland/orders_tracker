require "spec_helper"

describe TrackingHelper do
  describe "#tracking_number_form" do
    it "creates a form with one text field and a submit button" do
      helper.tracking_number_form.should have_css("form[method=get][action='#{tracking_number_path}']"
    ) do |form|
      form.should have_selector( 'input', type: 'text' )
      form.should have_selector( 'input', type: 'submit', value: "track your order" )
    end
    # helper.should_receive(:render).with 'tracking/tracking_number_form'
    # helper.tracking_number_form
    end
  end
end