Rails.application.routes.draw do
  get 'welcome/services'
  get 'welcome/index'
  root 'welcome#index'
  resources:services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
