Rails.application.routes.draw do
  post '/shorten/', to: 'links#shorten'
  get '/:short_url', to: 'links#redirect'
end
