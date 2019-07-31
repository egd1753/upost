Rails.application.routes.draw do



  get 'about' => 'welcome#about'

  root 'boards#show'

end
