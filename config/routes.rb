Rails.application.routes.draw do
  resources :categories do
    resources :articles
  end

  root 'welcome#index'
end
