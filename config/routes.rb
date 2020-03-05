Rails.application.routes.draw do

  get 'emails/index'
  devise_for :users
  root to: 'emails#index'
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources  :emails
end
#                  Prefix Verb   URI Pattern                                    Controller#Action
#                  emails GET    /emails(.:format)                              emails#index
#                         POST   /emails(.:format)                              emails#create
#               new_email GET    /emails/new(.:format)                          emails#new
#edit_email               GET    /emails/:id/edit(.:format)                     emails#edit
#email                    GET    /emails/:id(.:format)                          emails#show
#                         PATCH  /emails/:id(.:format)                          emails#update
#                         PUT    /emails/:id(.:format)                          emails#update
#                         DELETE /emails/:id(.:format)                          emails#destroy
