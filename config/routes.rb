Rails.application.routes.draw do
	root to: 'articles#index'
	
	resources :articles do
  resources :comments
end
	#get '/articles' => 'articles#index'
	#get '/articles/:id' => 'articles#show', as: :article
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
