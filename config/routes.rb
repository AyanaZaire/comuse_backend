Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
      namespace :v1 do
        get '/me', to: 'members#show'
        get "/oauth/callback", to:'members#stripe_callback'
        post "/charge", to:'section#process_payment'
        resources :members, :section, :course, :enrolled, :category, :charges
        # get '/charges', to: 'charges#create'
        post '/login', to: 'auth#login'

      end
    end



end

# http://localhost:3001/oauth/callback?code=ac_DhwexqsnkiZqbs1YQdjndhAbjLV4wenW&state=1
