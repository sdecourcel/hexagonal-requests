Rails.application.routes.draw do
  get 'new/create'
  get 'new/update_status_confirmed'
  get 'new/email_to_confirm'
  get 'new/email_confirmed'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
