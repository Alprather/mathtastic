Rails.application.routes.draw do
  get "welcome/index"

  get "welcome/about"
  get "welcome/lessons"
  get "fractions/index"
  get "welcome/classroom"
  root 'welcome#index'

end
