Rails.application.routes.draw do

  devise_for :users
  # Edit User Model un comment regiterable to enable registers.

  #devise_for :users, :skip => [:registrations]                                          
  #as :user do
  #    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
  #    put 'users/:id' => 'devise/registrations#update', :as => 'user_registration'            
  #end

  resources :teams do
    resources :team_members
  end



  resource :programed_course_sessions do
    get :autocomplete_person_last_name, on: :collection
  end
  
  resources :courses do 
    resources :programed_courses, shallow: true do
      resources :enrollments, shallow: true 
      resources :programed_course_sessions, shallow: true   
    end
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  


  resources :people

  get 'teachers' => 'teachers#index'

  # You can have the root of your site routed with "root"
   root 'people#index'

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
