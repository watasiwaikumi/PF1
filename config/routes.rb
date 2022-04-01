Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'home/top' => 'homes#top'
  
end
