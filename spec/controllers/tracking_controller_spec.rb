require 'spec_helper'

def valdation_of(code_sample)
  controller = TrackingController.new
  controller.instance_eval { validate code_sample }
end

describe TrackingController do
  
  describe "GET /check" do
    context "a unvalid tracking number" do
      it "send an js alert" do
        get :check, number: "123", format: :js
        response.should render_template("error_alert")
      end
    end
  end
  
  describe "#validate" do
    it "returns :dhl for a valid DHL code" do
      valdation_of( "054655196483" ).should eq :dhl
    end
    
    it "returns :fedex for a valid FedEx code" do
      valdation_of( "1010098142170009131600578986691790" ).should eq :fedex
    end
    
    it "returns :blank for a blank code" do
      valdation_of( "" ).should eq :blank      
    end
    
    it "returns :error_alert for all other cases" do
      valdation_of( "1010098142170009131600578986691790+" ).should eq :error_alert
    end
  end
end