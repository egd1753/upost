Rails.application.routes.draw do
  root 'boards#show'

  get 'about' => 'welcome#about'

  resources :bulletins

end
