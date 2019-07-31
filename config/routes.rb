Rails.application.routes.draw do

  resources :boards

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
