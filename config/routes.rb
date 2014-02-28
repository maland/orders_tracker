Rails.application.routes.draw do
  get '/tracking_number' => 'tracking#check', as: 'tracking_number'
end