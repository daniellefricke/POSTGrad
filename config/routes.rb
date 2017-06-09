Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "schools#index"

    resources :schools do
      resources :posts do
        resources :comments
      end
    end
  end
