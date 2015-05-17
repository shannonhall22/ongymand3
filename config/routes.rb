Rails.application.routes.draw do

  # Routes for the Gym2 resource:
  # CREATE
  get '/gym2s/new',      :controller => 'gym2s', :action => 'new',    :as => 'new_gym2'
  post '/gym2s',         :controller => 'gym2s', :action => 'create', :as => 'gym2s'

  # READ
  get '/gym2s',          :controller => 'gym2s', :action => 'index'
  get '/gym2s/:id',      :controller => 'gym2s', :action => 'show',   :as => 'gym2'

  # UPDATE
  get '/gym2s/:id/edit', :controller => 'gym2s', :action => 'edit',   :as => 'edit_gym2'
  patch '/gym2s/:id',    :controller => 'gym2s', :action => 'update'

  # DELETE
  delete '/gym2s/:id',   :controller => 'gym2s', :action => 'destroy'
  #------------------------------

  devise_for :users
  root 'gyms#index'

  get '/home',      :controller => 'home', :action => 'show'
  get '/about',      :controller => 'about', :action => 'show'

  # Routes for the Search resource:
  # CREATE
  get '/searches/new',      :controller => 'searches', :action => 'new',    :as => 'new_search'
  post '/searches',         :controller => 'searches', :action => 'create', :as => 'searches'

  # READ
  get '/searches',          :controller => 'searches', :action => 'index'
  get '/searches/:id',      :controller => 'searches', :action => 'show',   :as => 'search'

  # UPDATE
  get '/searches/:id/edit', :controller => 'searches', :action => 'edit',   :as => 'edit_search'
  patch '/searches/:id',    :controller => 'searches', :action => 'update'

  # DELETE
  delete '/searches/:id',   :controller => 'searches', :action => 'destroy'
  #------------------------------

  # Routes for the Gym resource:
  # CREATE
  get '/gyms/new',      :controller => 'gyms', :action => 'new',    :as => 'new_gym'
  post '/gyms',         :controller => 'gyms', :action => 'create', :as => 'gyms'

  # READ
  get '/gyms',          :controller => 'gyms', :action => 'index'
  get '/gyms/:id',      :controller => 'gyms', :action => 'show',   :as => 'gym'

  # UPDATE
  get '/gyms/:id/edit', :controller => 'gyms', :action => 'edit',   :as => 'edit_gym'
  patch '/gyms/:id',    :controller => 'gyms', :action => 'update'

  # DELETE
  delete '/gyms/:id',   :controller => 'gyms', :action => 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # READ
  get '/users',          :controller => 'users', :action => 'index'
  get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # UPDATE
  get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  patch '/users/:id',    :controller => 'users', :action => 'update'

  # DELETE
  delete '/users/:id',   :controller => 'users', :action => 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
