Rails.application.routes.draw do
  resources :free_licenses, :only => :create
  resources :paid_licenses, :only => :create
end
