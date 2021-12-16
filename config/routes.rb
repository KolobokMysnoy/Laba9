Rails.application.routes.draw do
  root 'main#main'
  get '/view', :to => 'main#view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
