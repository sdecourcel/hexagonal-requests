Rails.application.routes.draw do

  resources :requests, only: [:new, :create] do
    member do
      get 'update_status_confirmed', to: 'requests#update_status_confirmed'
      get 'email_to_confirm', to: 'requests#email_to_confirm'
      get 'email_confirmed', to: 'requests#email_confirmed'
    end
  end

  root to: 'requests#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
