Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artists#index'

  resources :photos

  resources :artists, only: [:index] do
    resources :songs, only: [:index, :create] do
      collection do
      get :by_name
      get :by_created_at
      end
    end
  end
end
