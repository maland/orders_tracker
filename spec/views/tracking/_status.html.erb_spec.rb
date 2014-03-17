require "spec_helper"

describe "tracking/_status.html.erb" do
  context "a delivered shipment" do
    it "shows a table with all shipment statuses" do
      assign(:statuses, [
        { datetime: DateTime.parse("15.03.2014 08:00"), info: "packed" },
        { datetime: DateTime.parse("17.03.2014 10:45"), info: "successful delivered" },
      ])
      render
      rendered.should have_css "table tr", text: "successful delivered"
    end
  end
end