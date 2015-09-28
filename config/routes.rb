Rails.application.routes.draw do
  get '/shorten/', to: 'links#new'
  post '/shorten/', to: 'links#shorten'
  get '/:short_url', to: 'links#redirect'
end
