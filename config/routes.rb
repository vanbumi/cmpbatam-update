Rails.application.routes.draw do

  resources :cprofiles, path: 'admin/company-profiles'

  resources :contacts

  resources :banners, path: 'admin/banners'

  # devise_for :users
  devise_for :users, :path => '', :path_names => {:sign_in => 'cmp-login', :sign_out => 'logout', :sign_up => 'cmp-register'}

  resources :users, path: 'admin/users'

  get 'single/index'

  get ':slug' => 'single#index'

  get 'admin/dashboard' => 'admin#index'

  resources :properties, path: 'admin/properties'

  get '/properties/name' => 'properties#name'

  get '/properties/property_name' => 'properties#property_name'
  
  get '/home' => 'home#index'

  get '/home/development' => 'home#develop'

  # we use this
  get '/listing' => 'home#listing'

  get 'landing/index' => 'home#landing'

  # CMP User Documentation
  get 'cmp/documentation' => 'home#dokumentasi'

  get 'react/latihan' => 'home#lat_react'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   #root 'home#develop'

   # we use this on production ----->
   root 'home#landing'

   mount Attachinary::Engine => "/attachinary"
   
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
