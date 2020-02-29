Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/:id', to: 'friends#show', as: 'friend'
  delete 'friends/:id', to: 'friends#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # TOPページをarticlesコントローラのindexに設定
  root 'top#index'
  # 全記事表示用のルーティング
  resources :articles
  # 会員と記事を関連付けたルーティング
  resources :members do
    # 会員と記事を紐づけ
    resources :articles, only: [:index]
  end

  # フォロー機能に関するルーティング設定
  post 'follow/:id', to: 'relationships#follow', as: 'follow'
  post 'unfollow/:id', to: 'relationships#unfollow', as: 'unfollow'
  post 'friends_follow/:id', to: 'relationships#friends_follow', as: 'friends_follow'
  post 'friends_unfollow/:id', to: 'relationships#friends_unfollow', as: 'friends_unfollow'

  # 単数リソースのルーティング
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]

end
