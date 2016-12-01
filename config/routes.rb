Rails.application.routes.draw do
  root 'conversations#index'

  get 'conversations/receive'

  get 'conversations/teach'

  get 'conversations/save'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
