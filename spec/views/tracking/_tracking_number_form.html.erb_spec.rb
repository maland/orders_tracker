require "spec_helper"

describe "tracking/_tracking_number_form.html.erb" do
  it "renders a form with a text field and a button" do
    render partial: "tracking_number_form", locals: { remote: true }
    response.should render_template partial: "_tracking_number_form", locals: { remote: true }
  end
end