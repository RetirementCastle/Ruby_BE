Rails.application.routes.draw do
  resources :report_types
  resources :reports

  wash_out :wsreports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
