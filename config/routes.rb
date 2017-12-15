Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'


  root 'welcome#index'
  resources :users

  resources :movies do
    collection do
      get 'search'
      post 'search', to: 'movies#create'
    end
    member do
      put 'like', to: 'movies#upvote'
      put 'dislike', to: 'movies#downvote'
    end
  end

  resources :groups, only: [:new, :create, :show] do
    member do
      get 'join'
    end
  end

  resources :group_watchlists, only: [:create, :destroy]

end
