Beers::Application.routes.draw do
 
  root :to => 'static_pages#home'
  get "beers/index"

  match '/home', to: 'static_pages#home'
  match '/search', to: 'static_pages#search'
  match '/olutsivu/:name', to: 'static_pages#olutsivu'
  match '/oluttietoa', to: 'static_pages#oluttietoa'
  match '/oluen_valmistus', to: 'static_pages#oluen_valmistus'
  match '/olutlasit', to: 'static_pages#olutlasit'
  match '/vehnaolut', to: 'static_pages#vehnaolut'
  match '/ale', to: 'static_pages#ale'
  match '/stout_ja_porter', to: 'static_pages#stout_ja_porter'
  match '/erikoisolut', to: 'static_pages#erikoisolut'
  match '/lager', to: 'static_pages#lager'
  match '/tumma_lager', to: 'static_pages#tumma_lager'
  match '/pils', to: 'static_pages#pils'
  match '/vahva_lager', to: 'static_pages#vahva_lager'

  resources :beers
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
