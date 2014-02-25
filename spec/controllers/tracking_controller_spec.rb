require 'spec_helper'

describe TrackingController do

  describe "GET 'check'" do
    it "returns http success" do
      get 'check'
      response.should be_success
    end
  end

end
