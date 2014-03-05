class TrackingController < ApplicationController

  def check
    @number = params[:number]
    render validate @number
  end
  
  
  private

  # würde bei aufwendigerem Code in ein Constraint oder eingene Klasse unter lib/ gehen
  def validate(tracking_code)
    if tracking_code.blank?
      :blank
    elsif tracking_code.match( /^\d{12}$/ )
      :dhl
    elsif tracking_code.match( /^\d{34}$/ )
      :fedex
    else
      :error_alert
    end
  end
end