Rails.application.routes.draw do
  root 'welcome#index'

  get 'about' => 'welcome#about'

  resources :boards do
    resources :bulletins, except: [:index]
  end

end
