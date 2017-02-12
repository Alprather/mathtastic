Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show]

resources :lessons do
  post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
end
resources :classrooms
resources :games




  get "welcome/index"

  get "welcome/about"
  get "welcome/lessons"
  get "fractions/index"
  get "welcome/classroom"
  get "welcome/story"
  root 'welcome#index'

end
