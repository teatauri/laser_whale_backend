Rails.application.routes.draw do
  get '/scores/highscores', to: 'scores#highscores'

  resources :scores
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
