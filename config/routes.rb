Montevideodetodos2::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#home'

  resources :interesting_links, only: [:index]

  post 'set_accessibilities', to: 'accessibilities#set'

  get 'contact', to: 'application#contact'

  get 'about',
    to: 'application#about',
    as: :about_us

  resources :subscriptions

  get 'accesibilidades/:id',
    to: 'accessibilities#show',
    as: :accessibility
  get 'accesibilidades/:id/eventos',
    to: 'accessibilities#events',
    as: :events_accessibility
  get 'accesibilidades/:id/instituciones',
    to: 'accessibilities#institutions',
    as: :institutions_accessibility
  get 'accesibilidades/:id/lugares',
    to: 'accessibilities#places',
    as: :places_accessibility

  get 'eventos/:id',
    to: 'events#show',
    as: :event

  get 'instituciones/:id',
    to: 'institutions#show',
    as: :institution

  get 'lugares',
    to: 'places#index',
    as: :places
  get 'lugares/:id',
    to: 'places#show',
    as: :place

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
