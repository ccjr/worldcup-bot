WorldcupBot::Application.routes.draw do
  resources :links, only: [:show]

  resources :matches, only: [:index] do
    collection do
      get "tomorrow"
    end
  end

  resources :scores, only: [:index, :show] do
    collection do
      get "recap"
    end
  end

  resources :teams, only: [:show, :index]

  resources :groups, only: :show

end
