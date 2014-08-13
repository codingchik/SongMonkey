Rails.application.routes.draw do
    # resource :session, only: [:new, :create, :destroy]
   #  resources :songs
   # resources :users
    get 'songs' => 'songs#index', as: :songs
    get 'songs/new' => 'songs#new', as: :new_song
    get 'songs/:id' => 'songs#show'
    post 'songs' => 'songs#create', as: :create_song
    get 'songs/:id/:edit' => 'songs#edit'
    patch 'songs/:id' => 'songs#update'
    put 'songs/:id' => 'songs#update'
    delete 'songs/:id' => 'songs#destroy'

    get 'users' => 'users#index', as: :user
    get 'users/new' => 'users#new', as: :newuser
    post 'users' => 'users#create'
    get 'users/:id' => 'users#show', as: :show_user
    
    get 'users/:id/:edit' => 'users#edit'
    patch 'users/:id' => 'users#update'
    put 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    post 'session' => 'session#create'
    get 'session/new' => 'session#new', as: :new_session
    delete 'session' => 'sessions#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index', as: :home

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
