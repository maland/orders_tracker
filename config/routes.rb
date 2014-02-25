Rails.application.routes.draw do
  patch '/tracking_number' => 'tracking#check', as: 'tracking_number'
end