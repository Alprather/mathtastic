Rails.application.routes.draw do

  devise_for :users
  resources :users, :only => [:show]

resources :lessons
resources :classrooms
  get "welcome/index"

  get "welcome/about"
  get "welcome/lessons"
  get "fractions/index"
  get "welcome/classroom"
  get "welcome/story"
  root 'welcome#index'

end
