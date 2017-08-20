Rails.application.routes.draw do
  resources :boardgames
  root 'pages#index'
  get 'pages/show'
  devise_for :users
  resources :users

  if Rails.env.development? #deviseの確認メール用
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
