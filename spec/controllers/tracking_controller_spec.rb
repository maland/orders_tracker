require 'spec_helper'

describe TrackingController do
  
  describe "GET /check" do
    context "a unvalid tracking number" do
      it "send an js alert" do
        get :check, number: 123, format: :js
        response.should render_template("error_alert")
      end
    end
  end
end