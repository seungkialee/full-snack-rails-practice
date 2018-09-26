Rails.application.routes.draw do
  resources :books do
    resources :authorships, only: [:create, :destroy]
  end
  resources :authors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
