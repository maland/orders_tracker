class TrackingController < ApplicationController
  def check
    @number = params[:number]
    if valdiate @number # valid
    else
      render :error_alert
    end
  end
  
  private
  
  def valdiate(tracking_code)
    
  end
end