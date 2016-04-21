Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # ----Site Controller----
  get '/' => 'site#home'

  get '/contact' => 'site#contact'

  get '/say_name/:name' => 'site#say_name'

  get '/calculator' => 'site#calculator'

  post '/calculate' => 'site#calculate'

  # ----Projects Controller----
  get '/projects' => 'projects#index'

  post "/projects" => "projects#create"

  get "/projects/new" => "projects#new"

  get '/projects/:project_id' => 'projects#show'

  # ----Time Entries Controller----
  get "/projects/:project_id/time_entries" => "time_entries#index", as: :project_entries

  get "/projects/:project_id/time_entries/new" => "time_entries#new"

  post "/projects/:project_id/time_entries" => "time_entries#create", as: :project_time_entries

  get "/projects/:project_id/time_entries/:id/edit" => "time_entries#edit"

  patch "/projects/:project_id/time_entries/:id" => "time_entries#update", as: :project_time_entry

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
