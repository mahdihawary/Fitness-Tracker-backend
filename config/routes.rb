Rails.application.routes.draw do
  
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmbundle intsallbundle l
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :exercises
      resources :days
      resources :routines
      resources :routine_exercises
  end
end

end
