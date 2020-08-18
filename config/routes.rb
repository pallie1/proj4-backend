Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :reviews
  resources :shops

  # resources :users

  resources :users do                                                            
    collection do                                                                
      post '/login', to: 'users#login'                                            
    end                                                                          
  end  

  # resource :users do
  #   collection do
  #     get 'users(/username/:username)', to: 'users#show_user'
  #     # get ":username", action: 'show_user'
  #     # get '/', action: 'index'
  #   end
  # end

  # resources :users
  # resources :user, only: [:index, :create, :destroy, :show_user, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


