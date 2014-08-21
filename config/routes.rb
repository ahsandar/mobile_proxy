MobileProxy::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations"}

  namespace :proxy_api do
    resources :details, :only=>[] do
      get 'user'
    end
    namespace :v1 do
      resources :articles
    end
  end
  root to: "proxy_api/details#user"
end
