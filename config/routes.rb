PessanhaVidracaria::Application.routes.draw do
 
  resources :fotoscarros
  
  resources :dicas do 
    collection do
      get :limpeza_box
      get :limpeza_vidro
      get :limpeza_espelho
      get :manutencao_box
      get :recomendacoes_box
      get :vantagens_temperado
    end
  end
  
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
