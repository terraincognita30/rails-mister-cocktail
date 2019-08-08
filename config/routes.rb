Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/show'
  get 'ingredients/new'
  get 'ingredients/create'
  get 'ingredients/edit'
  get 'ingredients/update'
  get 'ingredients/destroy'
  resources :cocktails do
    resources :doses, only: [:new, :create]
    end
resources :doses, only: [:destroy ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
