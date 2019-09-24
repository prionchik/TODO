Rails.application.routes.draw do
root 'wellcome#index'

post 'index' => 'wellcome#create'
resources :wellcome
end
