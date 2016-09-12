Rails.application.routes.draw do
  root 'welcome#index'

  resources :categories do

  end
end
