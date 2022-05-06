Rails.application.routes.draw do
  
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get 'home/top' => 'homes#top'
  get 'home/sns' => 'homes#sns'
  get 'home/work' => 'homes#work'
  get 'home/contact' => 'homes#contact'
  
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
  
end
