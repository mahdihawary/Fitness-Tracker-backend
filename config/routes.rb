Rails.application.routes.draw do
  
  resources :routine_exercises
  resources :routines
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmbundle intsallbundle l
  namespace :api do 
    namespace :v1 do
      resources :users
      resources :exercises
      resources :days
  end
end

end
