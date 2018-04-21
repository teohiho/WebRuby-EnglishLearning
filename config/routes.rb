Rails.application.routes.draw do
  # get 'quiz_user/:abc', to: 'quiz_user#quiz'

  resources :quizs
	root :to => 'quizs#show'

	post 'quizs/show', to: 'quiz#show'

  resource :groups, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
