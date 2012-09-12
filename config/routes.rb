PessanhaVidracaria::Application.routes.draw do
 
   resources :locais
   resources :somos
    
    resources :administracoes do 
     collection do
      get :alterar_deletar
      get :cadastrar
      get :consultar_relatorio
    end
  end
     
  devise_for :usuarios, controllers: { registrations: 'usuarios' }

  resources :usuarios

  root to: "home#index"
end
