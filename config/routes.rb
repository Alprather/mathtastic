Rails.application.routes.draw do
  get "welcome/index"

  get "welcome/about"
  get "welcome/lessons" 
  get "fractions/index"
  root 'welcome#index'

end
