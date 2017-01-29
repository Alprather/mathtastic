Rails.application.routes.draw do

  devise_for :users
   resources :users, only: [:show, :index] do
     resources :lessons
     resources :classrooms
   end

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
