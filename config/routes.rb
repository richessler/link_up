Rails.application.routes.draw do
                     #don't use devise namespace for the callback, use omniauthcallbacks controller
  devise_for :users, :controllers => { omniauth_callbacks: "omniauth_callbacks"}

  resources :linkedin
  get '/linkedin_profile' => 'linkedin#linkedin_profile'
  get '/oauth_account' => 'linkedin#oauth_account'
  get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
  root :to => 'welcome#index'

  resources :listings, only: [:index, :create, :new, :destroy]
end
