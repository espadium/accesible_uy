AccesibleUY::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  # The priority is based upon order of creation:
  # first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  if ENV['under_construction'] == 'true'
    root 'application#comming_soon'
  else
    root 'application#index'
  end

  post 'set_accessibilities', to: 'accessibilities#set'

  get 'contact', to: 'application#contact'

  get 'about',
    to: 'application#about',
    as: :about_us

  resources :subscriptions, only: [:new, :create, :index]

  get 'accesibilidades/:id',
    to: 'accessibilities#show',
    as: :accessibility
  get 'accesibilidades/:id/eventos',
    to: 'events#by_accessibility',
    as: :events_accessibility
  get 'accesibilidades/:id/instituciones',
    to: 'institutions#by_accessibility',
    as: :institutions_accessibility
  get 'accesibilidades/:id/lugares',
    to: 'places#by_accessibility',
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

  get 'eventos',
    to: 'events#index',
    as: :events
  get 'instituciones',
    to: 'institutions#index',
    as: :institutions

  get 'enlaces_de_interes',
    to: 'interesting_links#index',
    as: :interesting_links
end
