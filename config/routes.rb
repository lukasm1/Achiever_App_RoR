Rails.application.routes.draw do
  mount Flipper::UI.app(Flipper) => '/flipper'
  # eg.: http://localhost:3000/flipper/

  devise_for :users
  root "dashboard#index"

  resources :achievers
  resources :habits
  resources :achiever_habits

  resources :book_recommendations
  resources :achiever_book_recommendations

  resources :quotes

  resources :favorites, only: [:create, :destroy]
  resources :activateds, only: [:create, :destroy]

  post "activateds/:id/toggle", to: "activateds#toggle"

end
