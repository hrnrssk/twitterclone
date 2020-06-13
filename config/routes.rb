Rails.application.routes.draw do
  resources :bishlogs do
    collection do
      post :confirm
    end
  end
end
