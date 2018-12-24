Rails.application.routes.draw do
  devise_for :users
  resources :ideas
  get 'welcome/index'
  get 'welcome/userideas'
  root 'welcome#index'
  resources :ideas do
    member do
      put "like", to: "ideas#upvote"
      put "dislike", to: "ideas#downvote"
    end
  end
end
