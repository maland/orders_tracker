class TrackingController < ApplicationController

  def check
    @number = params[:number]
    render validate @number
  end
  
  
  private

  # in case of more complex code it would be moved in a Constraint or a own class in lib/
  def validate(tracking_code)
    if tracking_code.blank?
      :blank
    elsif tracking_code.match( /^\d{12}$/ )
      @statuses = DhlOrderStatus.find tracking_code
      :dhl
    elsif tracking_code.match( /^\d{34}$/ )
      @statuses = FedexOrderStatus.find tracking_code
      :fedex
    else
      :error_alert
    end
  end
end