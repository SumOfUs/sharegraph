Rails.application.routes.draw do
  get 'track/:uuid' => 'tracking#redirect'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
