Rails.application.routes.draw do
  resources :counters
  resources :bugs
  resources :states
  get 'search', to: 'search#search'
   get 'bugcounter', to: 'bugcounter#bugcounter'
   get 'bugsearch', to: 'bugsearch#bugsearch'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
