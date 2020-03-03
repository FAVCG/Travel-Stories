Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about' => 'about#about'
  resources :signups
  post 'signups' => 'signups#create'
  get 'thanks' => 'pages#thanks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
