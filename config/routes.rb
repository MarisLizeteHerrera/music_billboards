Rails.application.routes.draw do
  root 'billboard#index'
  
  resources :billboards
end
