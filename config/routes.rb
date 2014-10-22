Rails.application.routes.draw do
    resources :songs 
    resources :users
    resource :session, only: [:new, :create, :destroy]
    root 'welcome#index', as: :home

end
