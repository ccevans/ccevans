Rails.application.routes.draw do

  get 'pages/programliftoff'
  get 'pages/webdesign'
  get 'pages/services'
  get 'pages/culture'
  get 'pages/shop'
  get 'pages/spaceship'
  get 'pages/projects'
  get 'app/index'

  root 'pages#home'
  
end
