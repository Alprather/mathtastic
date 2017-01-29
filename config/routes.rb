Rails.application.routes.draw do

resources :lessons
  get "welcome/index"

  get "welcome/about"
  get "welcome/lessons"
  get "fractions/index"
  get "welcome/classroom"
  get "welcome/story"
  root 'welcome#index'

end
