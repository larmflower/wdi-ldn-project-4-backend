Rails.application.routes.draw do
  scope :api do
    resources :users
    resources :comments
    resources :posts
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/github', to: 'oauth#github'
    post 'oauth/instagram', to: 'oauth#instagram'
    post 'oauth/facebook', to: 'oauth#facebook'
    post 'requestfriend', to: 'users#friend_request'
    put 'acceptfriend', to: 'users#accept_request'
    put 'declinefriend', to: 'users#decline_request'
    put 'removefriend', to: 'users#remove_friend'
    get 'news', to: 'newsapi#news'
  end
end
