PessanhaVidracaria::Application.routes.draw do
    resources :somos
    
    root to: "home#index"
end
