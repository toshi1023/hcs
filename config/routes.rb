Rails.application.routes.draw do
  get 'friends/index'
  get 'friends/:id', to: 'friends#show', as: 'friend'
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

  # 単数リソースのルーティング
  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]

end
