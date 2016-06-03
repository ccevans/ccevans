Rails.application.routes.draw do

  devise_for :users
  get 'pages/programliftoff'
  get 'pages/webdesign'
  get 'pages/services'
  get 'pages/culture'
  get 'pages/shop'
  get 'pages/spaceship'
  get 'pages/projects'
  get 'storeapp/index'
  get 'app/index'

  root 'pages#home'

  resources :projects
  resources :currentupdates

  resources :posts, only: [:create, :index, :show] do
    resources :comments, only: [:show, :create] do
      member do
        put '/upvote' => 'comments#upvote'
      end
    end

    member do
      put 'upvote' => 'posts#upvote'
    end
  end
  
end
