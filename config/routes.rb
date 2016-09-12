Rails.application.routes.draw do
  resources :categories do
    resources :articles
  end

  resources :articles do

  end

  root 'welcome#index'
end
