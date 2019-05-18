Rails.application.routes.draw do
  get 'welcome/services'

  get 'welcome/index'
  root 'welcome#index'
  root 'welcome#services'
  resource:services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
