Rails.application.routes.draw do
  namespace 'api' do
  	namespace 'v1' do 
  		resources :links, only: [:create]
  		get '/s/:slug', to: 'links#show', as: :short
  	end
  end
end
