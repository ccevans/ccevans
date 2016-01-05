Rails.application.routes.draw do

  get 'pages/webdesign'
  get 'pages/services'
  get 'pages/culture'
  get 'pages/shop'
  get 'pages/spaceship'
  root 'pages#projects'
  
end
