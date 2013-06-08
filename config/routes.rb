Ncvocaldir::Application.routes.draw do
  resources :groups

  root :to => 'pages#home'

  get 'about' => 'pages#about'
  get 'newgroup' => 'groups#new'
end
