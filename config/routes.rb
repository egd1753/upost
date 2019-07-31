Rails.application.routes.draw do

  get 'boards/show'

  get 'about' => 'welcome#about'

  root 'welcome#index'

end
