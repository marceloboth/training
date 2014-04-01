Training::Application.routes.draw do
  resources :posts

  root :to => 'pages#index'

  %w[about contact cv].each do |page|
    get page, controller: 'pages', action: page
  end


end
