Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about' => 'about#about'
  resources :signups, only: [:new]
  post 'signups' => 'signups#new'
  get 'thanks' => 'pages#thanks'
end
