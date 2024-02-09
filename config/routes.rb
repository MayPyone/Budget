Rails.application.routes.draw do
  devise_for :users, :controllers => { :confirmations => 'devise/confirmations' }
  
  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end

  unauthenticated :user do
    root 'splash#index', as: :unauthenticated_root
  end
   
  resources :splash
  resources :groups do
    resources :entities
  end
end
