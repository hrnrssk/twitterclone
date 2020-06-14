Rails.application.routes.draw do
  root to:'top#index'
  resources :bishlogs do
    collection do
      post :confirm
    end
  end
end
