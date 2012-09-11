PessanhaVidracaria::Application.routes.draw do
  devise_for :usuarios

    resources :somos
    
    root to: "home#index"
end
