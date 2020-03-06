Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about' => 'about#about'
  resources :signups
  post 'signups' => 'signups#create'
  get 'thanks' => 'pages#thanks'
end
