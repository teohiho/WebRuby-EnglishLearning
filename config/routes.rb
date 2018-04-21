Rails.application.routes.draw do
  # get 'quiz_user/:abc', to: 'quiz_user#quiz'

  root :to => 'quizs#show'
  resources :quizs
  resource :groups, only: :show
  post '/quizs/submit', to: 'quizs#submit' # for ajax
end
