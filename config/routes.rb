Rails.application.routes.draw do




resources :events
resources :groups



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :enrollments
  resources :roles

end
